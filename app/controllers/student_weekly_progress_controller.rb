class StudentWeeklyProgressController < ApplicationController
    skip_before_action :authorize_user
    before_action :set_student_weekly_progresses, only: [:index]
    before_action :set_student_weekly_progress, only: [:show, :update]

    # serialization_scope :view_context

    def index
        render json: @student_weekly_progresses, include: student_weekly_progresses_options
    end

    def show
        render json: @student_weekly_progress, include: student_weekly_progresses_options
    end

    def update
        @student_weekly_progress.update(student_params)
        progresses = @student_weekly_progress.select(:instructions_progress, :resources_progress, :assignment_progress).take
        total_progress = progresses.instructions_progress + progresses.resources_progress + progresses.assignment_progress
        @student_weekly_progress.update("total_progress": total_progress)
  
        render json: @student_weekly_progress, include: student_weekly_progresses_options
    end

    def create
        
    end

    private

    def student_params
        # whitelist params
        params.require(:student_weekly_progress).permit(:instructions_progress, :resources_progress, :assignment_progress, :assignment_submission)
    end

    def set_student_weekly_progress
        @student_weekly_progress = StudentWeeklyProgress.where(student_id: params[:student_id], week_number: params[:week_number])
    end

    def set_student_weekly_progresses
        # @student = Student.find(params[:id])
        @student_weekly_progresses = StudentWeeklyProgress.where(student_id: params[:student_id])
    end

    def student_weekly_progresses_options
        ['student_weekly_progress', 'week', 'student', 'student.user', 'week.course', 'week.unit', 'week.lesson','registered_mentor_sessions', 'registered_mentor_sessions.mentor_course', 'registered_mentor_sessions.mentor_course.mentor', 'registered_mentor_sessions.mentor_course.mentor.user']
    end
end
