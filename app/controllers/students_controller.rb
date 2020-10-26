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
      json_response(@todo)
    end
  
    # PUT /todos/:id
    def update
      @todo.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @todo.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_todo
      @todo = Todo.find(params[:id])
    end

end
