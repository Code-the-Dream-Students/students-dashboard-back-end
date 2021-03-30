class CohortCoursesController < ApplicationController

  skip_before_action :authenticate_cookie

  before_action :set_cohort
  before_action :set_course
  before_action :set_cohort_course

  def index
    @cohort_courses = CohortCourse.all
    render json: @cohort_courses
  end

  def create
    if @cohort_course == nil
      if @cohort && @course
        @cohort.courses << @course

        render json: {
          message: "Relationship created successfully",
          relationship: @cohort_course,
          cohort: @cohort,
          course: @course
        }
      else
        render json: { message: "Not found" }, status: 404  
      end
    else
      render json: { message: "Relationship already exist" }, status: 412
    end
  end

  def destroy
    if @cohort_course && @cohort_course.destroy
      render json: {
        message: "Relationship deleted successfully",
        cohort: @cohort,
        course: @course
      }
    else
      render json: { message: "Relationship doesn't exist" }, status: 404
    end
  end

  private

    def set_cohort
      @cohort = Cohort.find(params[:cohort_id])
    end

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_cohort_course
      @cohort_course = CohortCourse.find_by(cohort_id: params[:cohort_id], course_id: params[:course_id])
    end

end
