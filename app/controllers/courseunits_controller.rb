class CourseunitsController < ApplicationController
  def index
    if courseunit_params
      render json: {
        status: 200,
        message: "Success",
        relationship: courseunit_params,
        course: course_params,
        unit: unit_params
      }
    else
      render json: {
        status: 404,
        message: "Relationship doesn't exist"
      }
    end
  end

  def create
    if courseunit_params == nil
      if course_params && unit_params
        course_params.units << unit_params

        render json: {
          status: 200,
          message: "Relationship created successfully",
          relationship: courseunit_params,
          course: course_params,
          unit: unit_params
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
    if courseunit_params && courseunit_params.destroy
      render json: {
        status: 200,
        message: "Relationship deleted successfully",
        course: course_params,
        unit: unit_params
      }
    else
      render json: {
        status: 404,
        message: "Relationship doesn't exist"
      }
    end
  end

  private

    def course_params
      Course.find(params[:course_id])
    end

    def unit_params
      Unit.find(params[:unit_id])
    end

    def courseunit_params
      CourseUnit.find_by(course_id: params[:course_id], unit_id: params[:unit_id])
    end
  
end