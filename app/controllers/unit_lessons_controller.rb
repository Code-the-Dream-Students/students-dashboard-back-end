class UnitLessonsController < ApplicationController

  skip_before_action :authenticate_cookie

  def create
    if set_unit_lesson == nil
      if set_unit && set_lesson
        set_unit.lessons << set_lesson

        render json: {
          status: 200,
          message: "Relationship created successfully",
          relationship: set_unit_lesson,
          unit: set_unit,
          lesson: set_lesson
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
    if set_unit_lesson && set_unit_lesson.destroy
      render json: {
        status: 200,
        message: "Relationship deleted successfully",
        unit: set_unit,
        lesson: set_lesson
      }
    else
      render json: {
        status: 404,
        message: "Relationship doesn't exist"
      }
    end
  end

  private

    def set_unit
      Unit.find(params[:unit_id])
    end

    def set_lesson
      Lesson.find(params[:lesson_id])
    end

    def set_unit_lesson
      UnitLesson.find_by(unit_id: params[:unit_id], lesson_id: params[:lesson_id])
    end
end