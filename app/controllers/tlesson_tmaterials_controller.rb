class TlessonTmaterialsController < ApplicationController

  # skip_before_action :authenticate_cookie
  before_action :set_tlesson, only: [:show, :create, :destroy]
  before_action :set_material, only: [:show, :create, :destroy]
  before_action :set_tlesson_tmaterial, only: [:show, :create, :destroy]

  def index
    @tlesson_tmaterials = TlessonTmaterial.all
    render json: @tlesson_tmaterials
  end

  def show
    if @tlesson_tmaterial
      render json: {
        relationship: @tlesson_tmaterial,
        tlesson: @tlesson,
        tmaterial: @tmaterial
      }
    else
      render json: { message: "Not found" }, status: 404  
    end
  end

  def create
    if @tlesson_tmaterial == nil
      if @tlesson && @tmaterial
        @tlesson.tmaterials << @tmaterial

        render json: {
          message: "Relationship created successfully",
          relationship: @tlesson_tmaterial,
          tlesson: @tlesson,
          tmaterial: @tmaterial
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @tlesson_tmaterial && @tlesson_tmaterial.destroy
      render json: {
        message: "Relationship deleted successfully",
        tlesson: @tlesson,
        tmaterial: @tmaterial
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_tlesson 
      @tlesson = Tlesson.find(params[:tlesson_id])
    end
    
    def set_material
      @tmaterial = Tmaterial.find(params[:tmaterial_id])
    end

    def set_tlesson_tmaterial
      @tlesson_tmaterial = TlessonTmaterial.find_by(tlesson_id: params[:tlesson_id], tmaterial_id: params[:tmaterial_id])
    end
end
