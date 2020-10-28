class SourcesController < ApplicationController

  before_action :set_source, only: [:show, :update]

  def index
    # if @user

    @sources = params[:course_id] && params[:unit_id] && params[:lesson_id] ?
      Course.find(params[:course_id]).units.find(params[:unit_id]).lessons.find(params[:lesson_id]).sources :
      params[:unit_id] && params[:lesson_id] ?
        Unit.find(params[:unit_id]).lessons.find(params[:lesson_id]).sources :
        params[:lesson_id] ?
          Lesson.find(params[:lesson_id]).sources :
          Source.all

    # @sources = Source.all
    render json: {
      status: :ok,
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

    @source = params[:course_id] && params[:unit_id] && params[:lesson_id] && set_source ?
      Course.find(params[:course_id]).units.find(params[:unit_id]).lessons.find(params[:lesson_id]).sources.find(params[:id]) :
      params[:unit_id] && params[:lesson_id] && set_source ?
        Unit.find(params[:unit_id]).lessons.find(params[:lesson_id]).sources.find(params[:id]) :
        params[:lesson_id] && set_source ?
          Lesson.find(params[:lesson_id]).sources.find(params[:id]) :
          set_source


    if @source
    # && @user 
      render json: {
        status: :ok,
        message: "Success",
        source: @source
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def create
    @source = Source.create(source_params)
    if @source
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Source created",
        source: @source
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def update
    if set_source.update(source_params)
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Source updated",
        source: set_source
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  def destroy
    if set_source.destroy
    # && @user && @user.role == "staff"
      render json: {
        status: :ok,
        message: "Source deleted",
      }
    else
      render json: {
        status: 401,
        message: "Error"
      }
    end
  end

  private

    def source_params
      params.require(:source).permit(:source_title, :link, :lesson_id)
    end

    def set_source
      Source.find(params[:id])
    end

end
