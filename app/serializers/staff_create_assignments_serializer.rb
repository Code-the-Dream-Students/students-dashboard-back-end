class StaffCreateAssignmentsSerializer < ActiveModel::Serializer
  attributes :id, :description, :link, :units, :lesson, :courses

  def courses
    object.lesson.units.order("id ASC").reduce({}) do |acc, curr|
      curr.courses.map { |course|
        { **acc, id: course.id, name: course.name }
      }
    end
    # object.lesson.units.order("id ASC").map { |unit|
    #     unit.courses.map { |course|
    #       {
    #         id: course.id,
    #         name: course.name,
    #       }
    #     }
    # }
  end

  def units
    object.lesson.units.order("id ASC").map do |unit|
      {
        id: unit.id,
        name: unit.unit_name,
      }
    end
  end

  def lesson
    {
      id: object.lesson.id,
      lesson_name: object.lesson.lesson_name
    }
  end
end
