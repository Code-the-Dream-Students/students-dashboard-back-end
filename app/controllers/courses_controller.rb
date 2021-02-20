class CoursesController < ApplicationController

  skip_before_action :authorize_user

  def index
    # @courses = Course.all
    # if @courses
    #   render ({
    #     json: {
    #       message: "Success",
    #       courses: @courses
    #     },
    #     status: 200
    #   })
    # else
    #   error_json
    # end
    @courses = Course.all
    render json: @courses, include: ['units.weeks', 'units.weeks.lesson', 'units.weeks.lesson.assignment', 'units.weeks.lesson.sources'], each_serializer: StaffCreateCourseAssignmentsSerializer
  end

  def search
    @courses = params[:course_name] ? 
      Course.where("course_name ILIKE ?", "%#{params[:course_name]}%") :
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
    if set_course
    # && @user 
      render ({
        json: {
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
    @course = Course.create(course_params)
    if @course
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
    if set_course.update(course_params)
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Course updated",
          course: set_course
        },
        status: 200
      })
    else
      error_json
    end
  end

  def destroy
    if set_course.destroy
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
      params.require(:course).permit(:course_name, :description)
    end

    def set_course
      Course.find(params[:id])
    end

    def error_json
      render ({
        json: {
          error: "Not Found"
        },
        status: 404
      })
    end
    
end
