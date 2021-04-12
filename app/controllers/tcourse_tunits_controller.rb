class TcourseTunitsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_tcourse, only: [:show, :create, :destroy]
  before_action :set_tunit, only: [:show, :create, :destroy]
  before_action :set_tcourse_tunit, only: [:show, :create, :destroy]

  def index
    @tcourse_tunits = TcourseTunit.all
    render json: @tcourse_tunits
  end

  def show
    if @tcourse_tunit
      render json: {
        relationship: @tcourse_tunit,
        tcourse: @tcourse,
        tunit: @tunit
      }
    else
      render json: { message: "Not found" }, status: 404  
    end
  end

  def create
    if @tcourse_tunit == nil
      if @tcourse && @tunit
        @tcourse.tunits << @tunit

        render json: {
          message: "Relationship created successfully",
          relationship: @tcourse_tunit,
          tcourse: @tcourse,
          tunit: @tunit
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @tcourse_tunit && @tcourse_tunit.destroy
      render json: {
        message: "Relationship deleted successfully",
        course: @tcourse,
        unit: @tunit
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_tcourse
      @tcourse = Tcourse.find(params[:tcourse_id])
    end

    def set_tunit
      @tunit = Tunit.find(params[:tunit_id])
    end

    def set_tcourse_tunit
      @tcourse_tunit = TcourseTunit.find_by(tcourse_id: params[:tcourse_id], tunit_id: params[:tunit_id])
    end
end
