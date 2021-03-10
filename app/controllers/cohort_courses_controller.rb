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
        @cohort.courses << set_course

        render json: {
          status: 200,
          message: "Relationship created successfully",
          relationship: @cohort_course,
          cohort: @cohort,
          course: @course
        }
      else
        render json: {
          status: 404,
          message: "Not found"
        }  
      end
    else
      render json: {
        status: 412,
        message: "Relationship already exist"
      }
    end
  end

  def destroy
    if @cohort_course && @cohort_course.destroy
      render json: {
        status: 200,
        message: "Relationship deleted successfully",
        cohort: @cohort,
        course: @course
      }
    else
      render json: {
        status: 404,
        message: "Relationship doesn't exist"
      }
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
