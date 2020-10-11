class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :show_students]#except: [:index, :new, create]

    def index
      @courses = Course.all
    end

    def show

    end

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
