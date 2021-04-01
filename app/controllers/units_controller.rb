class UnitsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_unit, only: [:show, :update, :destroy]

  def index
    @units = Unit.all
    render json: @units, status: 200, include: ["courses.cohorts", "lessons"]
  end

  def search
    @units = params[:name] ? Unit.where("name ILIKE ?", "%#{params[:name]}%") :
    params[:description] ? Unit.where("description ILIKE ?", "%#{params[:description]}%") : []
        
    render json: @units, include: ["courses.cohorts", "lessons"]
  end

  def show
    render json: @unit, status: 200, include: ["courses.cohorts", "lessons"]
  end

  def create
      @unit = Unit.new(unit_params)
      if @unit.save
        render json: { message: "Unit created", unit: @unit }, status: 201
      else
        error_json
      end
  end

  def update
    if @unit.update(unit_params)
      render json: { message: "Unit updated", unit: @unit }
    else
      error_json
    end
  end

  def destroy
    if CoreModules::DeleteClone.delete_unit(@unit)
      render json: { message: "Unit successfully deleted", unit: @unit }
    else
      error_json
    end
  end

  private

    def unit_params
      params.require(:unit).permit(:name, :description, :duration)
    end

    def set_unit
      @unit = Unit.find(params[:id])
    end

    def error_json
      render json: { error: "Bad request" }, status: 404
    end
end
