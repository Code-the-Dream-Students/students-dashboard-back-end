class AssignmentsController < ApplicationController
  skip_before_action :authenticate_cookie
  before_action :set_assignment, only: [:show, :update, :destroy]

  def index
    @assignments = Assignment.all
    render json: @assignments
  end

  # def search
  #   @materials = params[:name] ? Material.where("name ILIKE ?", "%#{params[:name]}%") :
  #   params[:description] ? Material.where("description ILIKE ?", "%#{params[:description]}%") : []

  #   render json: @materials
  # end

  def show
    if @assignment
      render json: @assignment
    else
      error_json
    end
  end

  def create
    @assignment = Assignment.new({lesson_id: params[:lesson_id], link: params[:link], description: params[:description]})
    if @assignment.save
      render json: { message: "Assignment successfully created", assignment: @assignment }
    else
      render json: @assignment.errors
    end
  end

  def update
    if @assignment.update(assignment_params)
      render json: { message: "Assignment successfully updated", assignment: @assignment }
    else
      error_json
    end
  end

  def destroy
    if CoreModules::DeleteClone.delete_assignment(@assignment)
      render json: { message: "Assignment successfully deleted", assignment: @assignment }
    else
      error_json
    end
  end

  # def clone_assignment
  #   @lesson = Lesson.find(params[:lesson_id])
  #   @tassignment = Tassignment.find(params[:tassignment_id])

  #   @assignment = CoreModules::CloneGenerator.clone_material(@lesson, @tassignment)
    
  #   if @assignment
  #     render json: @assignment 
  #   end 
  # end

  private

    def assignment_params
      params.require(:assignment).permit(:title, :link, :description, :lesson_id)
    end

    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def error_json
      render json: { error: "Bad request" }, status: 404
    end

end

