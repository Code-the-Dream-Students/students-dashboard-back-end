class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render json: {
      status: :ok,
      message: "Success",
      lessons: @lessons
    }
  end

  def show
    if set_lesson
    # && @user 
      render json: {
        status: :ok,
        message: "Success",
        lesson: set_lesson
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def create
    @lesson = Lesson.create(lesson_params)
    if @lesson
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Lesson created",
        lesson: @lesson
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def update
    if set_lesson.update(lesson_params)
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Lesson updated",
        lesson: set_lesson
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def destroy
    if set_lesson.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Lesson deleted",
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  private

    def lesson_params
      params.require(:lesson).permit(:lesson_name)
    end

    def set_lesson
      Lesson.find(params[:id])
    end
end
