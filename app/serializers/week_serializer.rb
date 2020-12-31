class WeekSerializer < ActiveModel::Serializer
  attributes :id, :week_number, :course_id, :unit_id, :lesson_id, :start_date, :end_date
end
