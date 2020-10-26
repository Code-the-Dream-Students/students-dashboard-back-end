class SourcesController < ApplicationController

  before_action :set_source, only: [:show, :update]

  def index
    # if @user

    @sources = Source.all
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
    if set_source
    # && @user 
      render json: {
        status: :ok,
        message: "Success",
        source: set_source
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
    # && @user
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

  private

    def source_params
      params.require(:source).permit(:source_title, :link, :lesson_id)
    end

    def set_source
      Source.find(params[:id])
    end

end
