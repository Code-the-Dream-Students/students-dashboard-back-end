class UnitsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_unit, only: [:show, :update, :destroy]


  def index
    @units = Unit.all
    render json: @units, status: 200, include: ['unit', 'lessons.sources']
  end

  def search
    @units = params[:name] ? 
      Unit.where("name ILIKE ?", "%#{params[:name]}%") :
      params[:description] ?
        Unit.where("description ILIKE ?", "%#{params[:description]}%") :
        []
        
    render ({
      json: {
        message: "Success",
        units: @units
      },
      status: 200
    })
  end

  def show
    render json: @unit, status: 200, include: ['unit', 'lessons.sources']
  end

  def create
      @unit = Unit.new(unit_params)
      if @unit.save
        render ({
          json: {
            message: "Unit created",
            unit: @unit
          },
          status: 201
        })
      else
        error_json
      end
  end

  def update
    if @unit.update(unit_params)
      render ({
        json: {
          message: "Unit updated",
          unit: @unit
        },
        status: 200
      })
    else
      error_json
    end
  end

  def destroy
    if @unit.destroy
      render ({
        json: {
          message: "Unit deleted",
        },
        status: 200
      })
    else
      error_json
    end
  end

  private

    def unit_params
      params.require(:unit).permit(:name, :description)
    end

    def set_unit
      @unit = Unit.find(params[:id])
    end

    def unit_details
      {
        id: set_unit.id,
        name: set_unit.name,
        description: set_unit.description,
        created_at: set_unit.created_at,
        updated_at: set_unit.updated_at,
        lessons: Unit.find(set_unit.id).lessons.map do |lesson|
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

    def error_json
      render json: { error: "Not Found" }, status: 404
    end
end
