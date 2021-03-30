class CoursesController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_course, only: [:show, :update, :destroy]

  def index
    @courses = Course.all
    render json: @courses, include: [
      'weeks.lesson.assignment', 
      'units.weeks', 
      'units.weeks.lesson', 
      'units.weeks.lesson.assignment', 
      'units.weeks.lesson.sources'
    ], 
    each_serializer: StaffCreateCourseAssignmentsSerializer
  end

  def search
    @courses = params[:name] ? 
      Course.where("name ILIKE ?", "%#{params[:name]}%") :
      params[:description] ?
        Course.where("description ILIKE ?", "%#{params[:description]}%") :
        []

    render ({
      json: {
        message: "Success",
        courses: @courses
      },
      status: 200
    })
  end

  def show
    if @course
    # && @user 
      render ({
        json: {
          message: "Success",
          course: {
            id: @course.id,
            name: @course.name,
            description: @course.description,
            created_at: @course.created_at,
            updated_at: @course.updated_at,
            units: Course.find(@course.id).units.map do |unit|
              {
                id: unit.id,
                name: unit.name,
                description: unit.description,
                created_at: unit.created_at,
                updated_at: unit.updated_at,
                lessons: Unit.find(unit.id).lessons.map do |lesson|
                  {
                    id: lesson.id,
                    lesson_name: lesson.lesson_name,
                    created_at: lesson.created_at,
                    updated_at: lesson.updated_at,
                    assignment: Lesson.find(lesson.id).assignment,
                    sources: Lesson.find(lesson.id).sources
                  }
                end
              }
            end
          }
        },
        status: 200
      })
    else
      error_json
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Course created",
          course: @course
        },
        status: 201
      })
    else
      error_json
    end
  end

  def update
    if @course.update(course_params)
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Course updated",
          course: @course
        },
        status: 200
      })
    else
      error_json
    end
  end

  def destroy
    if @course.destroy
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Course deleted",
        },
        status: 200
      })
    else
      error_json
    end
  end

  private

    def course_params
      params.require(:course).permit(:name, :description)
    end

    def set_course
      @course = Course.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end
    
end
