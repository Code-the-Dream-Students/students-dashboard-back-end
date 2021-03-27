class TunitsController < ApplicationController
  
  before_action :set_tunit, only: [:show, :update, :destroy]

  def index
    @tunits = Tunit.all
    render json: @tunits, include: ['tcourses']
  end

  def search
    @tunits = params[:name] ? Tunit.where("name ILIKE ?", "%#{params[:name]}%") : 
    params[:description] ? Tunit.where("description ILIKE ?", "%#{params[:description]}%") : []
        
    render json: @tunits, include: ['tcourses']
  end

  def show
    render json: @tunit, include: ['tcourses']
  end

  def create
      @tunit = Tunit.create(tunit_params)
      if @tunit
        render json: { message: "Unit template successfully created", tunit: @tunit }
      else
        error_json
      end
  end

  def update
    if @tunit.update(tunit_params)
      render json: { message: "Unit template successfully updated", tunit: @tunit }
    else
      error_json
    end
  end

  def destroy
    if @tunit.destroy
      render json: { message: "Unit template successfully deleted", tunit: @tunit }
    else
      error_json
    end
  end

  private

    def tunit_params
      params.require(:tunit).permit(:name, :description, :duration)
    end

    def set_tunit
      @tunit = Tunit.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end

end
