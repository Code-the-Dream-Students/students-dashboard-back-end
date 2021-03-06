class RegisteredMentorSessionsController < ApplicationController
    before_action :set_registered_mentor_sessions, only: [:index]
    before_action :set_registered_mentor_session, only: [:show]
    before_action :find_registered_mentor_session, only: [:update, :destroy]

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

    def update
        @find_registered_mentor_session.update(registered_params)

        render json: @find_registered_mentor_session, include: registered_mentor_sessions_options
    end

    def destroy
        @find_registered_mentor_session.destroy

        render json: { message: "Registered mentor session removed!"}
    end

    private

    def registered_params
        # whitelist params
        params.require(:registered_mentor_session).permit(:comments)
    end

    def set_registered_mentor_session
        @registered_mentor_session = RegisteredMentorSession.where(student_id: params[:student_id], week_number: params[:week_number])
    end

    def set_registered_mentor_sessions
        # @student = Student.find(params[:id])
        @registered_mentor_sessions = RegisteredMentorSession.where(student_id: params[:student_id])
    end

    def find_registered_mentor_session
        @find_registered_mentor_session = RegisteredMentorSession.find(params[:registered_mentor_session_id])
    end

    def find_mentor
       @mentor_id = MentorCourse.find_by("mentor_id": params[:mentor_id], "course_id": params[:course_id])
    end

    def registered_mentor_sessions_options
        ['registered_mentor_sessions', 'mentor_course', 'mentor_course.mentor', 'mentor_course.mentor.user']
    end
end
