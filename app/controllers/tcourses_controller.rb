class TcoursesController < ApplicationController
  # skip_before_action :authenticate_cookie
  before_action :set_tcourse, only: [:show, :update, :destroy]

  def index
    @tcourses = Tcourse.all
    render json: @tcourses, include: ['tunits.tlessons.tassignments', 'tunits.tlessons.tmaterials'] 
  end

  def search
    @tcourses = params[:name] ? Tcourse.where("name ILIKE ?", "%#{params[:name]}%") : 
    params[:description] ? Tcourse.where("description ILIKE ?", "%#{params[:description]}%") : []

    render json: @tcourses, include: ['tunits.tlessons.tassignments', 'tunits.tlessons.tmaterials']
  end

  def show
    if @tcourse 
      render json: @tcourse, include: ['tunits.tlessons.tassignments', 'tunits.tlessons.tmaterials']
    else
      error_json
    end
  end

  def create
    @tcourse = Tcourse.create(tcourse_params)
    if @tcourse
      render json: { message: "Course template successfully created", tcourse: @tcourse }
    else
      error_json
    end
  end

  def update
    if @tcourse.update(tcourse_params)
      render json: { message: "Course template successfully updated", tcourse: @tcourse }
    else
      error_json
    end
  end

  def destroy
    if @tcourse.destroy
      render json: { message: "Course template successfully deleted" }
    else
      error_json
    end
  end

  private

    def tcourse_params
      params.require(:tcourse).permit(:name, :description)
    end

    def set_tcourse
      @tcourse = Tcourse.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end

end
