class TlessonTassignmentsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_tlesson, only: [:show, :create, :destroy]
  before_action :set_assignment, only: [:show, :create, :destroy]
  before_action :set_tlesson_tmaterial, only: [:show, :create, :destroy]

  def index
    @tlesson_tassignments = TlessonTassignment.all
    render json: @tlesson_tassignments
  end

  def show
    if @tlesson_tassignment
      render json: {
        relationship: @tlesson_tassignment,
        tlesson: @tlesson,
        tassignment: @tassignment
      }
    else
      render json: { message: "Not found" }, status: 404  
    end
  end

  def create
    if @tlesson_tassignment == nil
      if @tlesson && @tassignment
        @tlesson.tassignments << @tassignment

        render json: {
          message: "Relationship created successfully",
          relationship: @tlesson_tassignment,
          tlesson: @tlesson,
          tassignment: @tassignment
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @tlesson_tassignment && @tlesson_tassignment.destroy
      render json: {
        message: "Relationship deleted successfully",
        tlesson: @tlesson,
        tassignment: @tassignment
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_tlesson 
      @tlesson = Tlesson.find(params[:tlesson_id])
    end
    
    def set_assignment
      @tassignment = Tassignment.find(params[:tassignment_id])
    end

    def set_tlesson_tmaterial
      @tlesson_tassignment = TlessonTassignment.find_by(tlesson_id: params[:tlesson_id], tassignment_id: params[:tassignment_id])
    end
end
