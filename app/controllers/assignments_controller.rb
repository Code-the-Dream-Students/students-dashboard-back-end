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
    @assignment = Assignment.new(assignment_params)
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
    params.require(:assignment).permit(:link, :description, :resources, :assignment)
  end

  def set_assignment
    @assignment = Assignment.find(params[:id])
  end

  def error_json
    render json: { error: "Bad request" }, status: 404
  end
  # skip_before_action :authenticate_cookie
  # before_action :get_course_unit_lesson_assignment, only: [:one_assignment]

  # def index
  #   assignments = Assignment.all
  #   # render json: assignments
  #   render json: assignments, each_serializer: StaffCreateAssignmentsSerializer
  # end

  # def show
  #   @assignment = set_course_id && set_unit_id && set_lesson_id && set_assignment ?
  #     set_course_unit_lesson_assignment :
  #     set_unit_id && set_lesson_id && set_assignment ?
  #       set_unit_lesson_assignment :
  #       set_lesson_id && set_assignment ?
  #         set_lesson_assignment :
  #         set_assignment

  #   if @assignment
  #   # && @user 
  #     if set_course_id && set_unit_id && set_lesson_id
  #       render ({
  #         json: {
  #           message: "Success",
  #           assignments: @assignment,
  #           course: Course.find(set_course_id),
  #           unit: Unit.find(set_unit_id),
  #           lesson: Lesson.find(set_lesson_id),
  #         },
  #         status: 200
  #       })
  #     elsif set_unit_id && set_lesson_id
  #       render ({
  #         json: {
  #           message: "Success",
  #           assignments: @assignment,
  #           unit: Unit.find(set_unit_id),
  #           lesson: Lesson.find(set_lesson_id),
  #         },
  #         status: 200
  #       })
  #     elsif set_lesson_id
  #       render ({
  #         json: {
  #           message: "Success",
  #           assignments: @assignment,
  #           lesson: Lesson.find(set_lesson_id),
  #         },
  #         status: 200
  #       })  
  #     else
  #       render ({
  #         json: {
  #           message: "Success",
  #           assignments: @assignment
  #         },
  #         status: 200
  #       })
  #     end
  #   else
  #     error_json
  #   end
  # end

  # def create
  #   @assignment = Assignment.new(assignment_params)
  #   if Lesson.find(set_lesson_id).assignment = @assignment
  #   # && @user && @user.role == "staff"
  #     render ({
  #       json: {
  #         message: "Source created",
  #         source: @assignment
  #       },
  #       status: 201
  #     })
  #   else
  #     error_json
  #   end
  # end

  # def update
  #   if set_assignment.update(assignment_params)
  #   # && @user && @user.role == "staff"
  #     render ({
  #       json: {
  #         message: "Source updated",
  #         source: set_assignment
  #       },
  #       status: 200
  #     })
  #   else
  #     error_json
  #   end
  # end

  # def destroy
  #   if set_assignment.destroy
  #   # && @user && @user.role == "staff"
  #     render ({
  #       json: {
  #         message: "Source deleted",
  #       },
  #       status: 200
  #     })
  #   else
  #     error_json
  #   end
  # end

  private

    def assignment_params
      params.require(:assignment).permit(:link, :description)
    end

    def set_course_id
      params[:course_id]
    end

    def set_unit_id
      params[:unit_id]
    end

    def set_lesson_id
      params[:lesson_id]
    end

    def set_assignment
      Lesson.find(set_lesson_id).assignment
    end

    def set_lesson_assignment
      Lesson.find(set_lesson_id).assignment
    end
    
    def set_unit_lesson_assignment
      Unit.find(set_unit_id).lessons.find(set_lesson_id).assignment
    end
    
    def set_course_unit_lesson_assignment
      Course.find(set_course_id).units.find(set_unit_id).lessons.find(set_lesson_id).assignment
    end

    def get_course_unit_lesson_assignment
      @assignment = Course.find(set_course_id).units.find(set_unit_id).lessons.find(set_lesson_id).assignment
    end

    def error_json
      render ({
        json: {
          error: "Not Found"
        },
        status: 404
      })
    end

end

