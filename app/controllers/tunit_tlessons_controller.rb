class TunitTlessonsController < ApplicationController

  # skip_before_action :authenticate_cookie
  before_action :set_tunit, only: [:show, :create, :destroy]
  before_action :set_tlesson, only: [:show, :create, :destroy]
  before_action :set_tunit_tlesson, only: [:show, :create, :destroy]

  def index
    @tunit_tlessons = TunitTlesson.all
    render json: @tunit_tlessons
  end

  def show
    if @tunit_tlesson
      render json: {
        relationship: @tunit_tlesson,
        tunit: @tunit,
        tlesson: @tlesson
      }
    else
      render json: { message: "Not found" }, status: 404  
    end
  end

  def create
    if @tunit_tlesson == nil
      if @tunit && @tlesson
        @tunit.tlessons << @tlesson

        render json: {
          message: "Relationship created successfully",
          relationship: @tunit_tlesson,
          tunit: @tunit,
          tlesson: @tlesson
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @tunit_tlesson && @tunit_tlesson.destroy
      render json: {
        message: "Relationship deleted successfully",
        tunit: @tunit,
        tlesson: @tlesson
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_tunit
      @tunit = Tunit.find(params[:tunit_id])
    end

    def set_tlesson
      @tlesson = Tlesson.find(params[:tlesson_id])
    end

    def set_tunit_tlesson
      @tunit_tlesson = TunitTlesson.find_by(tunit_id: params[:tunit_id], tlesson_id: params[:tlesson_id])
    end
end
