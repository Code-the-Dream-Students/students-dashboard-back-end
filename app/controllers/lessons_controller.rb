class LessonsController < ApplicationController
  def index
    @lessons = params[:course_id] && params[:unit_id] ?
      set_course_unit_lessons :
      params[:unit_id] ?
        set_unit_lessons :
        Lesson.all

    render json: {
      status: 200,
      message: "Success",
      lessons: @lessons
    }
  end

  def show
    @lesson = params[:course_id] && params[:unit_id] && set_lesson ?
      set_course_unit_lessons.find(params[:id]) :
      params[:unit_id] && set_lesson ?
        set_unit_lessons.find(params[:id]) :
        set_lesson

    if @lesson
    # && @user 
      render json: {
        status: 200,
        message: "Success",
        lesson: @lesson
      }
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

    def set_lesson
      Lesson.find(params[:id])
    end

    def set_course_unit_lessons
      Course.find(params[:course_id]).units.find(params[:unit_id]).lessons
    end

    def set_unit_lessons
      Unit.find(params[:unit_id]).lessons
    end

    def

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end

end
