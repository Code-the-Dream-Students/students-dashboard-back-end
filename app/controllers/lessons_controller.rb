class LessonsController < ApplicationController
  def index
    puts params
    @lessons = params[:course_id] && params[:unit_id] ?
      Course.find(params[:course_id]).units.find(params[:unit_id]).lessons :
      Lesson.all

    render json: {
      status: :ok,
      message: "Success",
      lessons: @lessons
    }
  end

  def show
    @lesson = params[:course_id] && params[:unit_id] && set_lesson ?
      Course.find(params[:course_id]).units.find(params[:unit_id]).lessons.find(params[:id]) :
      set_lesson

    if @lesson
    # && @user 
      render json: {
        status: :ok,
        message: "Success",
        lesson: @lesson
      }
    else
      error_json
    end
  end

  def create
    if !params[:course_id] && !params[:unit_id]

      @lesson = Lesson.create(lesson_params)

      if @lesson
      # && @user && @user.role == "staff"
        render json: {
          status: :ok,
          message: "Lesson created",
          lesson: @lesson
        }
      else
        error_json
      end
    else
      error_json
    end
  end

  def update
    if !params[:course_id] && !params[:unit_id]
      if set_lesson.update(lesson_params)
      # && @user && @user.role == "staff"
        render json: {
          status: :ok,
          message: "Lesson updated",
          lesson: set_lesson
        }
      else
        error_json
      end
    else
      error_json
    end
  end

  def destroy
    if !params[:course_id] && !params[:unit_id]
      if set_lesson.destroy
      # && @user && @user.role == "staff"
        render json: {
          status: :ok,
          message: "Lesson deleted",
        }
      else
        error_json
      end
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

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end

end
