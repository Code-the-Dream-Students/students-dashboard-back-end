class TassignmentsController < ApplicationController
  skip_before_action :authenticate_cookie
  before_action :set_tassignment, only: [:show, :update, :destroy]

  def index
    @tassignments = Tassignment.all
    render json: @tassignments, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def search
    @tassignments = Tassignment.where("title ILIKE ?", "%#{params[:title]}%")         
    render json: @tassignments, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def show
    render json: @tassignment, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def create
    @tassignment = Tassignment.create(tassignment_params)
    if @tassignment
      render json: { message: "Assignment template successfully created", tassignment: @tassignment }
    else
      error_json
    end
  end

  def update
    if @tassignment.update(tassignment_params)
      render json: { message: "Assignment template successfully updated", tassignment: @tassignment }
    else
      error_json
    end
  end

  def destroy
    if @tassignment.destroy
      render json: { message: "Assignment template successfully deleted", tassignment: @tassignment }
    else
      error_json
    end
  end

  private

    def tassignment_params
      params.require(:tassignment).permit(:title, :link, :description)
    end

    def set_tassignment
      @tassignment = Tassignment.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end
end
