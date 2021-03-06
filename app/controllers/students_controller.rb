class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :destroy]
    serialization_scope :view_context
  
    # GET /students
    def index
      @students = Student.all.order("id ASC")
      render json: @students, include: student_options
      # render json: StudentSerializer.new(@students, options).serializable_hash.to_json
      # json_response(@students)
    end
  
    # GET /students/:id
    def show
      render json: @student, include: student_options
      # render json: StudentSerializer.new(@student, options).serializable_hash.to_json
      # json_response(@student)
    end

    # POST /students
    def create
      # @student = Student.create!(student_params)
      user = User.create!({username: params[:username], email: params[:email], password: 'student123456', role: 'student'})
      student = Student.create!({ first_name: params[:first_name], last_name: params[:last_name], enrolled: true, user_id: user.id})
      json_response(student, :created, student_options)
    end
      
  
    # PUT /students/:id
    def update
      student = Student.find_by(user_id: @current_user.id)
      student.update(student_params)
      head :no_content
    end

      # PUT 
      def staff_update
        student = Student.find(params[:student_id])
        student.update(student_params)
        head :no_content
      end
  
    # # DELETE /students/:id
    # def destroy
    #   @student.destroy
    #   head :no_content
    # end
  
    private
  
    def student_params
      # whitelist params
      params.permit(:first_name, :last_name, :enrolled)
    end
  
    def set_student
      # @student = Student.find(params[:id])
      @student = Student.find_by(user_id: params[:user_id])
    end
    
    def student_options
      ['user', 'student_course.course','student_weekly_progresses.registered_mentor_sessions', 'student_weekly_progresses.week', 'student_weekly_progresses.registered_mentor_sessions.mentor_course', 'student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor', 'student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor.user', 'student_weekly_progresses.week.course', 'student_weekly_progresses.week.unit', 'student_weekly_progresses.week.lesson']
    end

    # def student_options
    #   [:first_name, :last_name, :enrolled, :user_id]
    # end

    # def student_weekly_progress_options
    #   [:total_progress, :assignment_progress, :resources_progress, :instructions_progress, :week_number, :week_id, :student_id, :assignment_submission]
    # end

    # def user_options
    #   [:username, :email]
    # end

    # def options
    #   # @options ||= { include: %i[student_weekly_progresses user], fields: {student: [:first_name, :last_name, :enrolled, :user_id], user: [:username, :email]}}
    #   @options ||= { include: %i[user student_weekly_progresses], fields: {student: student_options, student_weekly_progress: student_weekly_progress_options, user: user_options}}
    # end

end
