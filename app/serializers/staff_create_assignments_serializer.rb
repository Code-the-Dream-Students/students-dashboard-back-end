class StaffCreateAssignmentsSerializer < ActiveModel::Serializer
  attributes :id, :description, :link, :units, :lesson, :courses

  def courses
    object.lesson.units.order("id ASC").each_with_index.map { |unit, index|
      {
        id: unit.courses[index].id,
        name: unit.courses[index].course_name,
      }
    }
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
