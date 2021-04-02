class CoursesController < ApplicationController
  skip_before_action :authenticate_cookie
  before_action :set_course, only: [:show, :update, :destroy]

  def index
    @courses = Course.all
    render json: @courses, include: ["cohorts", "units.lessons"]
  end

  def search
    @courses = params[:name] ? Course.where("name ILIKE ?", "%#{params[:name]}%") :
    params[:description] ? Course.where("description ILIKE ?", "%#{params[:description]}%") : []

    render json: @courses, include: ["cohorts", "units.lessons"]
  end

  def show
    if @course
      render json: @course, include: ["cohorts", "units.lessons"]
    else
      error_json
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: { message: "Course created", course: @course }, status: 201
    else
      error_json
    end
  end

  def update
    if @course.update(course_params)
      render json: { message: "Course updated", course: @course }, status: 200
    else
      error_json
    end
  end

  def destroy
    if @course.destroy
      render json: { message: "Course deleted" }, status: 200
    else
      error_json
    end
  end

  def clone_unit
    @course = Course.find(params[:course_id])
    @tunit = Tunit.find(params[:tunit_id])

    @unit = CoreModules::CloneGenerator.clone_unit(@course, @tunit)
    
    if @unit
      render json: @unit 
    end 
  end

  private

    def course_params
      params.require(:course).permit(:name, :description)
    end

    def set_course
      @course = Course.find(params[:id])
    end

    def error_json
      render json: { error: "Not Found" }, status: 404
    end
    
end
