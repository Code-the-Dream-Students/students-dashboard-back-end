class StudentCourseController < ApplicationController
    skip_before_action :authorize_user
    before_action :find_students_by_course, only: [:show]
    before_action :find_student_by_course, only: [:find_student]
    # serialization_scope :view_context

    def index
        student_courses = StudentCourse.all
        json_response(student_courses, :ok, student_courses_options)
        # render json: student_courses, include: student_courses_options
    end

    def show
        json_response(@student_courses, :ok, student_courses_options)
        # render json: @student_courses, include: student_courses_options
    end

    def find_student
        json_response(@student, :ok, student_courses_options)
        # render json: @student, include: student_courses_options
    end

    def create_student_and_course
        weeks = 23;
        user = User.create!({username: params[:username], email: params[:email], password: 'student123456', role: 'student'})
        student = Student.create!({ first_name: 'first', last_name: 'last', enrolled: true, user_id: user.id})
        student_course = StudentCourse.create!({course_id: params[:course_id], student_id: student.id})
        # ActiveRecord::Base.transaction do
        #     weeks.times do |n|
        #       StudentWeeklyProgress.create!({    
        #         student_id: student.id,
        #         unit_id: 3,
        #         week_id: Week.find_by(course_id: 4, week_number: n).id,
        #         week_number: n,
        #         week: Week.find_by(course_id: 4, week_number: n),
        #         instructions_progress: 0,
        #         resources_progress: 0,
        #         assignment_progress: 0,
        #         assignment_submission: '',
        #         total_progress: 0
        #         })
        #     end
        #   end
        json_response(student_course, :created, student_courses_options)
    end

    def create
        student_course = StudentCourse.create!({student_id: params[:student_id], course_id: params[:course_id]})
        json_response(student_course, :created, student_courses_options)
    end

    private

    def student_course_params
        params.permit(:student_id, :course_id, :username, :email, :password)
    end

    def student_courses_options
        ['student', 'student.user', 'student_course', 'course']
    end

    def find_students_by_course
        @student_courses = StudentCourse.where(course_id: params[:course_id])
    end

    def find_student_by_course
        @student = StudentCourse.where(student_id: params[:student_id])
    end
end
