class RegisteredMentorSessionsController < ApplicationController
    skip_before_action :authorize_user
    before_action :set_registered_mentor_sessions, only: [:index]
    before_action :set_registered_mentor_session, only: [:show, :update]
    # before_action :find_mentor, only: [:create]

    serialization_scope :view_context

    def index
        render json: @registered_mentor_sessions, include: registered_mentor_sessions_options
    end

    def show
        render json: @registered_mentor_session, include: registered_mentor_sessions_options
    end

    def create
        new_mentor_session = RegisteredMentorSession.create!(student_id: params[:student_id], week_number: params[:week_number], comments: params[:comments], student_weekly_progress_id: StudentWeeklyProgress.find(params[:student_weekly_progress_id]).id, mentor_course_id: MentorCourse.find(params[:mentor_id]).id)

        render json: new_mentor_session, include: registered_mentor_sessions_options
    end

    private

    def registered_params
        # whitelist params
        params.require(:registered_mentor_session).permit(:week_number, :comments, :student_weekly_progress_id)
    end

    def set_registered_mentor_session
        @registered_mentor_session = RegisteredMentorSession.where(student_id: params[:student_id], week_number: params[:week_number])
    end

    def set_registered_mentor_sessions
        # @student = Student.find(params[:id])
        @registered_mentor_sessions = RegisteredMentorSession.where(student_id: params[:student_id])
    end

    def find_mentor
       @mentor_id = MentorCourse.find_by("mentor_id": params[:mentor_id], "course_id": params[:course_id])
    end

    def registered_mentor_sessions_options
        ['registered_mentor_sessions', 'mentor_course', 'mentor_course.mentor', 'mentor_course.mentor.user']
    end
end
