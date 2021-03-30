class UnitLessonsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_unit
  before_action :set_lesson
  before_action :set_unit_lesson

  def create
    if @unit_lesson == nil
      if @unit && @lesson
        @unit.lessons << @lesson

        render json: {
          status: 200,
          message: "Relationship created successfully",
          relationship: @unit_lesson,
          unit: @unit,
          lesson: @lesson
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
    if @unit_lesson && @unit_lesson.destroy
      render json: {
        status: 200,
        message: "Relationship deleted successfully",
        unit: @unit,
        lesson: @lesson
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
      @unit = Unit.find(params[:unit_id])
    end

    def set_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end

    def set_unit_lesson
      @unit_lesson = UnitLesson.find_by(unit_id: params[:unit_id], lesson_id: params[:lesson_id])
    end
end