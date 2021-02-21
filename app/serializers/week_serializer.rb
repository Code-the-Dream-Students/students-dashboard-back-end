class WeekSerializer < ActiveModel::Serializer
  attributes :id, :week_number, :course_id, :course_name, :unit_id, :unit_name, :lesson_id, :start_date, :end_date

  belongs_to :course
  belongs_to :unit
  belongs_to :lesson

  def course_name
    object.course.course_name
  end

  def unit_name
    object.unit.unit_name
  end
end
