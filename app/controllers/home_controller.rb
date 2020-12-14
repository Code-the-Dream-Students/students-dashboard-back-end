class HomeController < ApplicationController

  # skip_before_action :authenticate_user

  def index
    @data = Course.all.map do |course|
      {
        id: course.id,
        course_name: course.course_name,
        description: course.description,
        created_at: course.created_at,
        updated_at: course.updated_at,
        units: Course.find(course.id).units.map do |unit|
          {
            id: unit.id,
            unit_name: unit.unit_name,
            description: unit.description,
            created_at: unit.created_at,
            updated_at: unit.updated_at,
            lessons: Unit.find(unit.id).lessons.map do |lesson|
              {
                id: lesson.id,
                lesson_name: lesson.lesson_name,
                created_at: lesson.created_at,
                updated_at: lesson.updated_at,
                sources: Lesson.find(lesson.id).sources
              }
            end
          }
        end
      }
    end 
    render json: {
      courses: @data
    }
  end
end
