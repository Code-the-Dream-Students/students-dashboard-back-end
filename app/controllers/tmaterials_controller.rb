class TmaterialsController < ApplicationController
  skip_before_action :authenticate_cookie
  before_action :set_tmaterial, only: [:show, :update, :destroy]

  def index
    @tmaterials = Tmaterial.all
    render json: @tmaterials, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def search
    @tmaterials = Tmaterial.where("title ILIKE ?", "%#{params[:title]}%")          
    render json: @tmaterials, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def show
    render json: @tmaterial, include: ['tlessons.tunits.tcourses', 'tlessons.tmaterials']
  end

  def create
    @tmaterial = Tmaterial.create(tmaterial_params)
    if @tmaterial
      render json: { message: "Material template successfully created", tmaterial: @tmaterial }
    else
      error_json
    end
  end

  def update
    if @tmaterial.update(tmaterial_params)
      render json: { message: "Material template successfully updated", tmaterial: @tmaterial }
    else
      error_json
    end
  end

  def destroy
    if @tmaterial.destroy
      render json: { message: "Material template successfully deleted", tmaterial: @tmaterial }
    else
      error_json
    end
  end

  private

    def tmaterial_params
      params.require(:tmaterial).permit(
        :title, 
        :url, 
        :platform, 
        :treehouse_type, 
        :instructor, 
        :duration, 
        :learning_objectives, 
        :tools, 
        :notes
      )
    end

    def set_tmaterial
      @tmaterial = Tmaterial.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end
end
