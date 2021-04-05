class MaterialController < ApplicationController
    skip_before_action :authenticate_cookie
    before_action :set_material, only: [:show, :update, :destroy]

  def index
    @materials = Material.all
    render json: @materials
  end

  # def search
  #   @materials = params[:name] ? Material.where("name ILIKE ?", "%#{params[:name]}%") :
  #   params[:description] ? Material.where("description ILIKE ?", "%#{params[:description]}%") : []

  #   render json: @materials
  # end

  def show
    if @material
      render json: @material
    else
      error_json
    end
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      render json: { message: "Material successfully created", material: @material }
    else
      render json: @material.errors
    end
  end

  def update
    if @material.update(material_params)
      render json: { message: "Material successfully updated", material: @material }
    else
      error_json
    end
  end

  def destroy
    if CoreModules::DeleteClone.delete_material(@material)
      render json: { message: "Material successfully deleted", material: @material }
    else
      error_json
    end
  end

  def clone_material
    @lesson = Lesson.find(params[:lesson_id])
    @tmaterial = Tmaterial.find(params[:tmaterial_id])

    @material = CoreModules::CloneGenerator.clone_material(@lesson, @tmaterial)
    
    if @material
      render json: @material 
    end 
  end

  private

    def material_params
      params.require(:material).permit(:source_title, :link, :description, :platform, :treehouse_type, :instructor, :duration, :learning_objectives, :notes)
    end

    def set_material
      @material = Material.find(params[:id])
    end

    def error_json
      render json: { error: "Bad request" }, status: 404
    end
end
