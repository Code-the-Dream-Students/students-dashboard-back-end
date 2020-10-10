class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :show_courses]#except: [:index, :new, create]

  def index
    @students = Student.all
  end

  def show

  end

  def new
      @student = Student.new
  end

  def create
      @student = Student.new(student_params)
      respond_to do |format|
        if @student.save
          format.html { redirect_to @student, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student }
        else
          format.html { render :new }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
  end

  def edit

  end

  def update
      @student.update(student_params)
      redirect_to @student
  end

  def destroy
      @student.destroy
      redirect_to students_path
  end

  def show_courses
    json_response(@student.courses)
  end


  private 

    def student_params
        params.require(:student).permit(:user_id, :first_name, :last_name )
    end

    def set_student
        @student = Student.find(params[:id])
    end
end
