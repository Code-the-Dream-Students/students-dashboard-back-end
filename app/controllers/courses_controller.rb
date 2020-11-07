class CoursesController < ApplicationController
  def index
    @courses = Course.all
    if @courses
      render json: {
        status: 200,
        message: "Success",
        courses: @courses
      }
    else
      render json: {
        status: 404,
        error: "Not Found",
      }
    end
  end

  def search
    if (@courses = params[:course_name] ? 
      Course.where("course_name ILIKE ?", "%#{params[:course_name]}%") :
      params[:description] ?
        Course.where("description ILIKE ?", "%#{params[:description]}%") :
        [])

      render json: {
        status: 200,
        message: "Success",
        courses: @courses
      }
    else
      render json: {
        status: 404,
        error: "Not Found",
      }
    end
  end

  def show
    if set_course
    # && @user 
      render json: {
        status: 200,
        message: "Success",
        course: set_course
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def create
    @course = Course.create(course_params)
    if @course
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Course created",
        course: @course
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def update
    if set_course.update(course_params)
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Course updated",
        course: set_course
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def destroy
    if set_course.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Course deleted",
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  private

    def course_params
      params.require(:course).permit(:course_name, :description)
    end

    def set_course
      Course.find(params[:id])
    end
end
