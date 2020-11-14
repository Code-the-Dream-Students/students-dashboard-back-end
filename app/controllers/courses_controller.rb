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
    @courses = params[:course_name] ? 
      Course.where("course_name ILIKE ?", "%#{params[:course_name]}%") :
      params[:description] ?
        Course.where("description ILIKE ?", "%#{params[:description]}%") :
        []

    render json: {
      status: 200,
      message: "Success",
      courses: @courses
    }
  end

  def show
    if set_course
    # && @user 
      render json: {
        status: 200,
        message: "Success",
        course: {
          id: set_course.id,
          course_name: set_course.course_name,
          description: set_course.description,
          created_at: set_course.created_at,
          updated_at: set_course.updated_at,
          units: Course.find(set_course.id).units.map do |unit|
            {
              id: unit.id,
              unit_name: unit.unit_name,
              description: unit.description,
              created_at: unit.created_at,
              updated_at: unit.updated_at,
              lessons: Unit.find(unit.id).lessons.map do |lesson|
                {
                  id: lesson.id,
                  lesson_name: lesson.lesson_name,
                  created_at: lesson.created_at,
                  updated_at: lesson.updated_at,
                  sources: Lesson.find(lesson.id).sources
                }
              end
            }
          end
        }
      }
    else
      render json: {
        status: 404,
        error: "Not Found"
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
