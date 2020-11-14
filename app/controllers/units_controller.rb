class UnitsController < ApplicationController
  def index
    @units = set_course_id ?
      set_course.units :
      Unit.all

    if set_course_id
      render json: {
        status: 200,
        message: "Success",
        units: @units,
        course: set_course
      }      
    else
      render json: {
        status: 200,
        message: "Success",
        units: @units
      }
    end
  end

  def search
    @units = params[:unit_name] ? 
      Unit.where("unit_name ILIKE ?", "%#{params[:unit_name]}%") :
      params[:description] ?
        Unit.where("description ILIKE ?", "%#{params[:description]}%") :
        []
        
    render json: {
      status: 200,
      message: "Success",
      units: @units
    }
  end

  def show
    @unit = set_course_id && set_unit ?
      set_course.units.find(set_unit_id) :
      set_unit
      
    if @unit
    # && @user 
      if set_course_id
        render json: {
          status: 200,
          message: "Success",
          unit: {
            id: set_unit.id,
            unit_name: set_unit.unit_name,
            description: set_unit.description,
            created_at: set_unit.created_at,
            updated_at: set_unit.updated_at,
            lessons: Unit.find(set_unit.id).lessons.map do |lesson|
              {
                id: lesson.id,
                lesson_name: lesson.lesson_name,
                created_at: lesson.created_at,
                updated_at: lesson.updated_at,
                sources: Lesson.find(lesson.id).sources
              }
            end
          },
          course: set_course
        }
      else
        render json: {
          status: 200,
          message: "Success",
          unit: {
            id: set_unit.id,
            unit_name: set_unit.unit_name,
            description: set_unit.description,
            created_at: set_unit.created_at,
            updated_at: set_unit.updated_at,
            lessons: Unit.find(set_unit.id).lessons.map do |lesson|
              {
                id: lesson.id,
                lesson_name: lesson.lesson_name,
                created_at: lesson.created_at,
                updated_at: lesson.updated_at,
                sources: Lesson.find(lesson.id).sources
              }
            end
          }
        }
      end
    else
      error_json
    end
  end

  def create
      # && @user && @user.role == "staff"
      @unit = Unit.create(unit_params)
      if @unit
        render json: {
          status: 200,
          message: "Unit created",
          unit: @unit
        }
      else
        error_json
      end
  end

  def update
    if set_unit.update(unit_params)
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Unit updated",
        unit: set_unit
      }
    else
      error_json
    end
  end

  def destroy
    if set_unit.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Unit deleted",
      }
    else
      error_json
    end
  end

  private

    def unit_params
      params.require(:unit).permit(:unit_name, :description)
    end

    def set_unit_id
      params[:id]
    end

    def set_course_id
      params[:course_id]
    end

    def set_unit
      Unit.find(set_unit_id)
    end

    def set_course
      Course.find(set_course_id)
    end

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end
end
