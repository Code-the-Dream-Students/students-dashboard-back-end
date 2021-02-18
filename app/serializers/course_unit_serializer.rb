class CourseUnitSerializer < ActiveModel::Serializer
  attributes :id, :course_id, :unit_id

  belongs_to :course
  belongs_to :unit
end
