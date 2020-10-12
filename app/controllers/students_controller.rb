class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :show_courses]#except: [:index, :new, create]

  def index
    @students = Student.all
    json_response(@students)
  end

  # POST /student
  def create
    @student = Student.create!(student_params)
    json_response(@student, :created)
  end

  # GET /students/:id
  def show
    json_response(@student)
  end

  # def new
  #     @student = Student.new
  # end

  # def create
  #     @student = Student.new(student_params)
  #     respond_to do |format|
  #       if @student.save
  #         format.html { redirect_to @student, notice: 'Student was successfully created.' }
  #         format.json { render :show, status: :created, location: @student }
  #       else
  #         format.html { render :new }
  #         format.json { render json: @student.errors, status: :unprocessable_entity }
  #       end
  #     end
  # end

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

  # GET /students/:id/courses
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
