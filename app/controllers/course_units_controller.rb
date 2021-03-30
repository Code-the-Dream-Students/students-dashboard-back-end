class CourseUnitsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_course
  before_action :set_unit
  before_action :set_course_unit

  def index
    course_units = CourseUnit.all
    render json: course_units
  end

  def create
    if @course_unit == nil
      if @course && @unit
        @course.units << @unit

        render json: {
          message: "Relationship created successfully",
          relationship: @course_unit,
          course: @course,
          unit: @unit
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @course_unit && @course_unit.destroy
      render json: {
        message: "Relationship deleted successfully",
        course: @course,
        unit: @unit
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_unit
      @unit = Unit.find(params[:unit_id])
    end

    def set_course_unit
      @course_unit = CourseUnit.find_by(course_id: params[:course_id], unit_id: params[:unit_id])
    end
  
end