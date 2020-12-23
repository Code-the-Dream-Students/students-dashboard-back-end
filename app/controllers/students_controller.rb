class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :update, :destroy]
  
    # GET /students
    def index
      @students = Student.all
      json_response(@students)
    end
  
    # POST /students
    def create
      @student = Student.create!(student_params)
      json_response(@student, :created)
    end
  
    # GET /students/:id
    def show
      json_response(@student)
    end
  
    # PUT /students/:id
    def update
      @student.update(student_params)
      head :no_content
    end
  
    # DELETE /students/:id
    def destroy
      @student.destroy
      head :no_content
    end
  
    private
  
    def student_params
      # whitelist params
      params.permit(:first_name, :last_name, :enrolled)
    end
  
    def set_student
      @student = Student.find(params[:id])
    end

end
