class WeeksController < ApplicationController

  skip_before_action :authenticate_cookie
  # before_action :set_week, only: [:show, :update, :destroy]

  def index
    @weeks = Course.find(set_course_id).weeks

    render ({
      json: {
        message: "Success",
        weeks: @weeks.map do |week|
          {
            id: week.id,
            week_number: week.week_number,
            start_date: week.start_date,
            end_date: week.end_date,
            assignment: week.lesson.assignment,
            course: Course.find(week.course_id),
            unit: Unit.find(week.unit_id),
            lesson: Lesson.find(week.lesson_id),
            created_at: week.created_at,
            updated_at: week.updated_at
          }
        end
      },
      status: 200
    })

  end

  def show
    @week = (set_course_id && set_unit_id && set_lesson_id) ? 
      set_week :
      set_course_week
    if @week
      render ({
        json: {
          message: "Success",
          week: {
            id: @week.id,
            week_number: @week.week_number,
            start_date: @week.start_date,
            end_date: @week.end_date,
            assignment: @week.lesson.assignment,
            course: Course.find(@week.course_id),
            unit: Unit.find(@week.unit_id),
            lesson: Lesson.find(@week.lesson_id),
            created_at: @week.created_at,
            updated_at: @week.updated_at
          }
        }
      })
    else
      error_json
    end
  end

  def create
    if set_course_unit_lesson && !(set_week)
      @week = Week.new(
        week_number: params[:week_number],
        start_date: params[:start_date],
        end_date: params[:end_date],
        course_id: set_course_id,
        unit_id: set_unit_id,
        lesson_id: set_lesson_id
      )
      if @week.save
        render ({
          json: {
            message: "Week created",
            week: @week
          },
          status: 201
        })
      else
        error_json
      end
    else
      error_json
    end
  end

  def update
    # if set_week
      if set_week.update(week_params)
        render ({
          json: {
            message: "Week updated",
            week: set_week
          },
          status: 200
        })
      else
        error_json
      end
    # elsif set_course_week
    #   if set_course_week.update(week_params)
    #     render ({
    #       json: {
    #         message: "Week updated",
    #         week: Course.find(set_course_id).weeks.find_by(week_number: params[:week_number])
    #       },
    #       status: 200
    #     })
    #   else
    #     error_json
    #   end
    # end
  end

  def destroy
    if set_week.destroy
    # && @user && @user.role == "staff"
      render ({
        json: {
          message: "Week deleted",
        },
        status: 200
      })
    else
      error_json
    end
  end

  private

    def week_params
      params.require(:week).permit(:week_number, :start_date, :end_date)
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
    
    # def set_week_id
    #   params[:id]
    # end

    def set_week
      Week.find_by(
        course_id: set_course_id,
        unit_id: set_unit_id,
        lesson_id: set_lesson_id
      )
    end

    def set_course_week
      Course.find(set_course_id).weeks.find_by(week_number: params[:id])
    end
    
    def set_course_unit_lesson
      Course.find(set_course_id).units.find(set_unit_id).lessons.find(set_lesson_id)
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
