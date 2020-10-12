class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :edit, :update, :destroy, :show_students]#except: [:index, :new, create]

    def index
      @courses = Course.all
      json_response(@courses)
    end
  
    # POST /course
    def create
      @course = Course.create!(course_params)
      json_response(@course, :created)
    end

    # GET /courses/:id
    def show
        json_response(@course)
    end

    # PUT /courses/:id
    def update
        @course.update(course_params)
        head :no_content
    end

    # DELETE /courses/:id
    def destroy
        @course.destroy
        head :no_content
    end
  
    # GET /courses/:id/students
    def show_students
        json_response(@course.students)
    end


    private 
        def course_params
            params.require(:course).permit(:name, :duration )
        end

        def set_course
            @course = Course.find(params[:id])
        end
end
