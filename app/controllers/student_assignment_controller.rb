class StudentAssignmentController < ApplicationController
    skip_before_action :authenticate_cookie
    before_action :set_student_assignments, only: [:index]
    before_action :set_students, only: [:students_tracking]
    before_action :set_student_assignment, only: [:show, :update]

    # serialization_scope :view_context

    def index
        render json: @student_assignments
    end

    def show
        render json: @student_assignment
    end

    def students_tracking
        render json: @student_assignments, each_serializer: TrackingSerializer
    end

    def student_tracking
        student = Student.find(params[:student_id])
        render json: student, serializer: TrackingSerializer
    end

    def update
        @student_assignment.update(student_params)
        # status = @student_assignment.select(:status).take
        # total_progress = progresses.instructions_progress + progresses.resources_progress + progresses.assignment_progress
        # @student_weekly_progress.update("total_progress": total_progress)
  
        render json: @student_assignment
    end

    def create
    end

    private

    def student_params
        # whitelist params
        params.require(:student_assignment).permit(:status, :assignment_submission)
    end

    def set_student_assignment
        @student_assignment = StudentAssignment.where(student_id: params[:student_id], assignment_id: params[:assignment_id]).order("id ASC")
    end

    def set_student_assignments
        # @student = Student.find(params[:id])
        @student_assignments = StudentAssignment.where(student_id: params[:student_id]).order("id ASC")
    end

    def set_students
        @students = Student.all
    end

    def student_assignments_options
        ['student_weekly_progress', 'week', 'student', 'student.user', 'week.course', 'week.unit', 'week.lesson','registered_mentor_sessions', 'registered_mentor_sessions.mentor_course', 'registered_mentor_sessions.mentor_course.mentor', 'registered_mentor_sessions.mentor_course.mentor.user']
    end

    def tracking_options
        ['student_weekly_progresses.week', 'student_weekly_progresses.week.course', 'student_weekly_progresses.week.unit', 'student_weekly_progresses.week.lesson']
    end
end
