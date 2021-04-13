class CohortsController < ApplicationController

  skip_before_action :authenticate_cookie
  before_action :set_cohort, only: [:show, :update, :destroy]

  def index
    @cohorts = Cohort.all
    render json: @cohorts, include: ["courses.units.lessons.materials", "courses.units.lessons.assignment"]
  end

  # def search
  #   @cohorts = params[:name] ? Cohort.where("name ILIKE ?", "%#{params[:name]}%") :
  #   params[:description] ? Cohort.where("description ILIKE ?", "%#{params[:description]}%") : []

  #   render json: @cohorts, include: "courses.units.lessons"
  # end

  def show
    if @cohort
      render json: @cohort, include: "courses.units.lessons"
    else
      error_json
    end
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      render json: { message: "Cohort successfully created", cohort: @cohort }
    else
      render json: @cohort.errors
    end
  end

  def update
    if @cohort.update(cohort_params)
      render json: { message: "Cohort successfully updated", cohort: @cohort }
    else
      error_json
    end
  end

  def destroy
    if CoreModules::DeleteClone.delete_cohort(@cohort)
      render json: { message: "Cohort successfully deleted", cohort: @cohort }
    else
      error_json
    end
  end

  def clone_course
    @cohort = Cohort.find(params[:cohort_id])
    @tcourse = Tcourse.find(params[:tcourse_id])

    @course = CoreModules::CloneGenerator.clone_course(@cohort, @tcourse)
    
    if @course
      render json: @course 
    end 
  end

  private

    def cohort_params
      params.require(:cohort).permit(:name, :description, :start_date)
    end

    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

    def error_json
      render json: { error: "Bad request" }, status: 404
    end

end
