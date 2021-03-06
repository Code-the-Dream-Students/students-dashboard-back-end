class CourseUnitsController < ApplicationController


  # def index
  #   if set_course_unit
  #     render json: {
  #       status: 200,
  #       message: "Success",
  #       relationship: set_course_unit,
  #       course: set_course,
  #       unit: set_unit
  #     }
  #   else
  #     render json: {
  #       status: 404,
  #       message: "Relationship doesn't exist"
  #     }
  #   end
  # end

  def index
    course_units = CourseUnit.all
    render json: course_units
  end

  def create
    if set_course_unit == nil
      if set_course && set_unit
        set_course.units << set_unit

        render json: {
          status: 200,
          message: "Relationship created successfully",
          relationship: set_course_unit,
          course: set_course,
          unit: set_unit
        }
      else
        render json: {
          status: 404,
          message: "Not found"
        }  
      end
    else
      render json: {
        status: 412,
        message: "Relationship already exist"
      }
    end
  end

  def destroy
    if set_course_unit && set_course_unit.destroy
      render json: {
        status: 200,
        message: "Relationship deleted successfully",
        course: set_course,
        unit: set_unit
      }
    else
      render json: {
        status: 404,
        message: "Relationship doesn't exist"
      }
    end
  end

  private

    def set_course
      Course.find(params[:course_id])
    end

    def set_unit
      Unit.find(params[:unit_id])
    end

    def set_course_unit
      CourseUnit.find_by(course_id: params[:course_id], unit_id: params[:unit_id])
    end
  
end