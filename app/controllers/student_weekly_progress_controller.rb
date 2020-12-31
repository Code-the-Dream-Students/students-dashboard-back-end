class StudentWeeklyProgressController < ApplicationController
    skip_before_action :authorize_user
    before_action :set_student_weekly_progresses, only: [:index]
    serialization_scope :view_context

    def index
        render json: @student_weekly_progresses, include: student_weekly_progresses_options
    end

    def show
        student_weekly_progress = StudentWeeklyProgress.where(student_id: params[:student_id], week_number: params[:week_number])
        render json: student_weekly_progress, include: student_weekly_progresses_options
    end

    private

    def student_weekly_progress_params
        # whitelist params
        # params.require(:mentor_course).permit(:first_name, :last_name, :enrolled)
    end

    def set_student_weekly_progresses
        # @student = Student.find(params[:id])
        @student_weekly_progresses = StudentWeeklyProgress.where(student_id: params[:student_id])
    end

    def student_weekly_progresses_options
        ['student_weekly_progress', 'week', 'week.course', 'week.unit', 'week.lesson','registered_mentor_sessions']
    end
end
