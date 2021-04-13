class LessonAssignmentController < ApplicationController
    skip_before_action :authenticate_cookie
    before_action :set_lesson, only: [:create, :destroy]
    before_action :set_assignment, only: [:create, :destroy]
    before_action :set_lesson_assignment, only: [:create, :destroy]
    before_action :set_student_assignment, only: [:create, :destroy]

    def create
        if @lesson_assignment == nil
          if @lesson && @assignment
            @lesson.assignments << @assignment
            
            # if @student_material
            #     p @student
            #     p @material
            #     @student.materials << @material
            # end

            render json: {
              message: "Relationship created successfully",
              relationship: @lesson_assignment,
              lesson: @lesson,
              assignment: @assignment
            }
          else
            render json: { message: "Not found" }, status: 404  
          end
        else
          render json: { message: "Relationship already exist" }, status: 412
        end
      end
    
      def destroy
        if @lesson_assignment && @lesson_assignment.destroy
            # if @student_material
            #     @student_material.destroy
            # end

          render json: {
            message: "Relationship deleted successfully",
            lesson: @lesson,
            assignment: @assignment
          }
        else
          render json: { message: "Relationship doesn't exist" }, status: 404
        end
      end
    
      private
    
        def set_lesson
          @lesson = Lesson.find(params[:lesson_id])
        end
    
        def set_assignment
          @assignment = Assignment.find(params[:assignment_id])
        end
    
        def set_lesson_assignment
          @lesson_assignment = LessonAssignment.find_by(lesson_id: params[:lesson_id], assignment_id: params[:assignment_id])
        end

        def set_student
            @student = Student.find(params[:student_id])
        end

        def set_student_assignment
            @student_assignment = StudentAssignment.where(assignment_id: params[:assignment_id]).order("id ASC")
        end
end
