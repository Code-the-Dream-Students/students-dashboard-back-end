class LessonsController < ApplicationController
  skip_before_action :authenticate_cookie
  before_action :set_lesson, only: [:show, :update, :destroy]

  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  # def search
  #   @materials = params[:name] ? Material.where("name ILIKE ?", "%#{params[:name]}%") :
  #   params[:description] ? Material.where("description ILIKE ?", "%#{params[:description]}%") : []

  #   render json: @materials
  # end

  def show
    if @lesson
      render json: @lesson
    else
      error_json
    end
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      render json: { message: "Lesson successfully created", lesson: @lesson }
    else
      render json: @lesson.errors
    end
  end

  def update
    if @lesson.update(lesson_params)
      render json: { message: "Lesson successfully updated", lesson: @lesson }
    else
      error_json
    end
  end

  def destroy
    if CoreModules::DeleteClone.delete_lesson(@lesson)
      render json: { message: "Lesson successfully deleted", lesson: @lesson }
    else
      error_json
    end
  end

  # def clone_lesson
  #   @unit = Unit.find(params[:unit_id])
  #   @tlesson = Tlesson.find(params[:tlesson_id])

  #   @lesson = CoreModules::CloneGenerator.clone_material(@unit, @tlesson)
    
  #   if @lesson
  #     render json: @lesson 
  #   end 
  # end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :cohort_id)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def error_json
    render json: { error: "Bad request" }, status: 404
  end
  # skip_before_action :authenticate_cookie

  # def index
  #   @lessons = set_course_id && set_unit_id ?
  #     set_course_unit_lessons :
  #     set_unit_id ?
  #       set_unit_lessons :
  #       Lesson.all

  #   if set_course_id && set_unit_id
  #     render ({
  #       json: {
  #         message: "Success",
  #         lessons: @lessons,
  #         course: Course.find(set_course_id),
  #         unit: Unit.find(set_unit_id)
  #       },
  #       status: 200
  #     })
  #   elsif set_unit_id
  #     render ({
  #       json: {
  #         message: "Success",
  #         lessons: @lessons,
  #         unit: Unit.find(set_unit_id)
  #       },
  #       status: 200
  #     })
  #   else
  #     render ({
  #       json: {
  #         message: "Success",
  #         lessons: @lessons
  #       },
  #       status: 200
  #     })
  #   end
  # end

  # def search
  #   @lessons = params[:lesson_name] ? 
  #     Lesson.where("lesson_name ILIKE ?", "%#{params[:lesson_name]}%") :
  #     []
        
  #   render ({
  #     json: {
  #       message: "Success",
  #       lessons: @lessons
  #     },
  #     status: 200
  #   })
  # end

  # def show
  #   @lesson = set_course_id && set_unit_id && set_lesson ?
  #     set_course_unit_lessons.find(set_lesson_id) :
  #     set_unit_id && set_lesson ?
  #       set_unit_lessons.find(set_lesson_id) :
  #       set_lesson

  #   if @lesson
  #   # && @user 
  #     if set_course_id && set_unit_id
  #       render ({
  #         json: {
  #           message: "Success",
  #           lesson: lesson_details,
  #           course: Course.find(set_course_id),
  #           unit: Unit.find(set_unit_id),
  #         },
  #         status: 200
  #       })
  #     elsif set_unit_id
  #       render ({
  #         json: {
  #           message: "Success",
  #           lesson: lesson_details,
  #           unit: Unit.find(set_unit_id)
  #         },
  #         status: 200
  #       })  
  #     else
  #       render ({
  #         json: {
  #           message: "Success",
  #           lesson: lesson_details
  #         },
  #         status: 200
  #       })
  #     end
  #   else
  #     error_json
  #   end
  # end

  # def create
  #   @lesson = Lesson.new(lesson_params)
  #   if @lesson.save
  #     render json: { message: "Lesson created", tcourse: @lesson }, status: 201
  #   else
  #     render json: { errors: @tcourse.errors }, status: 400
  #   end
  # end

  # def update
  #   if set_lesson.update(lesson_params)
  #   # && @user && @user.role == "staff"
  #     render ({
  #       json: {
  #         message: "Lesson updated",
  #         lesson: set_lesson
  #       },
  #       status: 200
  #     })
  #   else
  #     error_json
  #   end
  # end

  # def destroy
  #   if set_lesson.destroy
  #   # && @user && @user.role == "staff"
  #     render ({
  #       json: {
  #         message: "Lesson deleted"
  #       },
  #       status: 200
  #     })
  #   else
  #     error_json
  #   end
  # end

  # private

  #   def lesson_params
  #     params.require(:lesson).permit(:lesson_name)
  #   end

  #   def set_course_id
  #     params[:course_id]
  #   end

  #   def set_unit_id
  #     params[:unit_id]
  #   end

  #   def set_lesson_id
  #     params[:id]
  #   end

  #   def set_lesson
  #     Lesson.find(set_lesson_id)
  #   end

  #   def set_unit_lessons
  #     Unit.find(set_unit_id).lessons
  #   end

  #   def set_course_unit_lessons
  #     Course.find(set_course_id).units.find(set_unit_id).lessons
  #   end

  #   def lesson_details
  #     {
  #       id: @lesson.id,
  #       lesson_name: @lesson.lesson_name,
  #       created_at: @lesson.created_at,
  #       updated_at: @lesson.updated_at,
  #       sources: Lesson.find(@lesson.id).sources
  #     }
  #   end

  #   def error_json
  #     render ({
  #       json: {
  #         error: "Not Found"
  #       },
  #       status: 404
  #     })
  #   end

end
