class LessonsController < ApplicationController
  def index
    @lessons = set_course_id && set_unit_id ?
      set_course_unit_lessons :
      set_unit_id ?
        set_unit_lessons :
        Lesson.all

    if set_course_id && set_unit_id
      render json: {
        status: 200,
        message: "Success",
        lessons: @lessons,
        course: Course.find(set_course_id),
        unit: Unit.find(set_unit_id)
      }
    elsif set_unit_id
      render json: {
        status: 200,
        message: "Success",
        lessons: @lessons,
        unit: Unit.find(set_unit_id)
      }
    else
      render json: {
        status: 200,
        message: "Success",
        lessons: @lessons
      }
    end
  end

  def search
    @lessons = params[:lesson_name] ? 
      Lesson.where("lesson_name ILIKE ?", "%#{params[:lesson_name]}%") :
      []
        
    render json: {
      status: 200,
      message: "Success",
      lessons: @lessons
    }
  end

  def show
    @lesson = set_course_id && set_unit_id && set_lesson ?
      set_course_unit_lessons.find(set_lesson_id) :
      set_unit_id && set_lesson ?
        set_unit_lessons.find(set_lesson_id) :
        set_lesson

    if @lesson
    # && @user 
      if set_course_id && set_unit_id
        render json: {
          status: 200,
          message: "Success",
          lesson: {
            id: @lesson.id,
            lesson_name: @lesson.lesson_name,
            created_at: @lesson.created_at,
            updated_at: @lesson.updated_at,
            sources: Lesson.find(@lesson.id).sources
          },
          course: Course.find(set_course_id),
          unit: Unit.find(set_unit_id),
        }
      elsif set_unit_id
        render json: {
          status: 200,
          message: "Success",
          lesson: {
            id: @lesson.id,
            lesson_name: @lesson.lesson_name,
            created_at: @lesson.created_at,
            updated_at: @lesson.updated_at,
            sources: Lesson.find(@lesson.id).sources
          },
          unit: Unit.find(set_unit_id)
        }  
      else
        render json: {
          status: 200,
          message: "Success",
          lesson: {
            id: @lesson.id,
            lesson_name: @lesson.lesson_name,
            created_at: @lesson.created_at,
            updated_at: @lesson.updated_at,
            sources: Lesson.find(@lesson.id).sources
          }
        }
      end
    else
      error_json
    end
  end

  def create
    @lesson = Lesson.create(lesson_params)

    if @lesson
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Lesson created",
        lesson: @lesson
      }
    else
      error_json
    end
  end

  def update
    if set_lesson.update(lesson_params)
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Lesson updated",
        lesson: set_lesson
      }
    else
      error_json
    end
  end

  def destroy
    if set_lesson.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Lesson deleted",
      }
    else
      error_json
    end
  end

  private

    def lesson_params
      params.require(:lesson).permit(:lesson_name)
    end

    def set_course_id
      params[:course_id]
    end

    def set_unit_id
      params[:unit_id]
    end

    def set_lesson_id
      params[:id]
    end

    def set_lesson
      Lesson.find(set_lesson_id)
    end

    def set_unit_lessons
      Unit.find(set_unit_id).lessons
    end

    def set_course_unit_lessons
      Course.find(set_course_id).units.find(set_unit_id).lessons
    end

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end

end
