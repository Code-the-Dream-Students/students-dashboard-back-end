class StudentMaterialController < ApplicationController
    skip_before_action :authenticate_cookie
    before_action :set_student_materials, only: [:index]
    before_action :set_students, only: [:students_tracking]
    before_action :set_student_material, only: [:show, :update]

    # serialization_scope :view_context

    def index
        render json: @student_materials, include: ['student', 'material', 'cohort', 'material.lesson']
    end

    def show
        render json: @student_material
    end

    def students_tracking
        render json: @student_materials, each_serializer: TrackingSerializer
    end

    def student_tracking
        student = Student.find(params[:student_id])
        render json: student, serializer: TrackingSerializer
    end

    def update
        @student_material.update(student_params)
        # status = @student_material.select(:status).take
        # total_progress = progresses.instructions_progress + progresses.resources_progress + progresses.assignment_progress
        # @student_weekly_progress.update("total_progress": total_progress)
  
        render json: @student_material
    end

    def create
        
    end

    private

    def student_params
        # whitelist params
        params.require(:student_material).permit(:status)
    end

    def set_student_material
        @student_material = StudentMaterial.where(student_id: params[:student_id], material_id: params[:material_id]).order("id ASC")
    end

    def set_student_materials
        # @student = Student.find(params[:id])
        @student_materials = StudentMaterial.where(student_id: params[:student_id]).order("id ASC")
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
