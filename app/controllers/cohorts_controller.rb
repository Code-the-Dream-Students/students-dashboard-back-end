class CohortsController < ApplicationController

  skip_before_action :authenticate_cookie

  before_action :set_cohort, only: [:show, :update, :destroy]


  def index
    @cohorts = Cohort.all
    render json: @cohorts
    # , include: ['weeks.lesson.assignment', 'units.weeks', 'units.weeks.lesson', 'units.weeks.lesson.assignment', 'units.weeks.lesson.sources'], each_serializer: StaffCreateCourseAssignmentsSerializer
  end

  def search
    @cohorts = params[:cohort_name] ? 
      Cohort.where("cohort_name ILIKE ?", "%#{params[:cohort_name]}%") :
      params[:description] ?
        Cohort.where("description ILIKE ?", "%#{params[:description]}%") :
        []

    render ({
      json: @cohorts, status: :ok
    })
  end

  def show
    if @cohort
    # && @user 
      render json: @cohort, status: 200
    else
      error_json
    end
  end

  def create
    @cohort = Cohort.create(cohort_params)
    if @cohort
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Cohort created",
          cohort: @cohort
        },
        status: 201
      })
    else
      error_json
    end
  end

  def update
    if @cohort.update(cohort_params)
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Cohort updated",
          cohort: @cohort
        },
        status: 200
      })
    else
      error_json
    end
  end

  def destroy
    if @cohort.destroy
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Cohort deleted",
        },
        status: 200
      })
    else
      error_json
    end
  end

  private

    def cohort_params
      params.require(:cohort).permit(:cohort_name, :description)
    end

    def set_cohort
      @cohort = Cohort.find(params[:id])
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
