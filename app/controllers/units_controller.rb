class UnitsController < ApplicationController
  def index
    @units = params[:course_id] ?
      Course.find(params[:course_id]).units :
      Unit.all

    render json: {
      status: :ok,
      message: "Success",
      units: @units
    }
  end

  def show
    @unit = params[:course_id] && set_unit ?
      Course.find(params[:course_id]).units.find(params[:id]) :
      set_unit
      
    if set_unit
    # && @user 
      render json: {
        status: :ok,
        message: "Success",
        unit: set_unit
      }
    else
      error_json
    end
  end

  def create
    if !params[:course_id]
      # && @user && @user.role == "staff"
      @unit = Unit.create(unit_params)
      if @unit
        render json: {
          status: :ok,
          message: "Unit created",
          unit: @unit
        }
      else
        error_json
      end
    else
      error_json
    end
  end

  def update
    if !params[:course_id]
      if set_unit.update(unit_params)
      # && @user && @user.role == "staff"
        render json: {
          status: :ok,
          message: "Unit updated",
          unit: set_unit
        }
      else
        error_json
      end
    else
      error_json
    end
  end

  def destroy
    if !params[:course_id]
      if set_unit.destroy
      # && @user && @user.role == "staff"
        render json: {
          status: :ok,
          message: "Unit deleted",
        }
      else
        error_json
      end
    else
      error_json
    end
  end

  private

    def unit_params
      params.require(:unit).permit(:unit_name, :description)
    end

    def set_unit
      Unit.find(params[:id])
    end

    def error_json
      render json: {
        status: 401,
        message: "Error"
      }
    end
end
