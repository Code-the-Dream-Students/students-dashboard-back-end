class SourcesController < ApplicationController

  before_action :set_source, only: [:show, :update]

  def index
    # if @user

    @sources = set_course_id && set_unit_id && set_lesson_id ?
      set_course_unit_lesson_sources :
      set_unit_id && set_lesson_id ?
        set_unit_lesson_sources :
        set_lesson_id ?
          set_lesson_sources :
          Source.all

    # @sources = Source.all
    render json: {
      status: 200,
      message: "Success",
      sources: @sources
    }

    # else
    #   render json: {
    #     status: :401,
    #     message: "Error"
    #   }
    # end
  end

  def show

    @source = set_course_id && set_unit_id && set_lesson_id && set_source ?
      set_course_unit_lesson_sources.find(params[:id]) :
      set_unit_id && set_lesson_id && set_source ?
        set_unit_lesson_sources.find(params[:id]) :
        set_lesson_id && set_source ?
          set_lesson_sources.find(params[:id]) :
          set_source


    if @source
    # && @user 
      render json: {
        status: 200,
        message: "Success",
        source: @source
      }
    else
      error_json
    end
  end

  def create
    @source = Source.create(source_params)
    if @source
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Source created",
        source: @source
      }
    else
      error_json
    end
  end

  def update
    if set_source.update(source_params)
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Source updated",
        source: set_source
      }
    else
      error_json
    end
  end

  def destroy
    if set_source.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: 200,
        message: "Source deleted",
      }
    else
      error_json
    end
  end

  private

    def source_params
      params.require(:source).permit(:source_title, :link, :lesson_id)
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

    def set_source
      Source.find(params[:id])
    end

    def set_lesson_sources
      Lesson.find(set_lesson_id).sources
    end
    
    def set_unit_lesson_sources
      Unit.find(set_unit_id).lessons.find(set_lesson_id).sources
    end
    
    def set_course_unit_lesson_sources
      Course.find(set_course_id).units.find(set_unit_id).lessons.find(set_lesson_id).sources
    end

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end

end
