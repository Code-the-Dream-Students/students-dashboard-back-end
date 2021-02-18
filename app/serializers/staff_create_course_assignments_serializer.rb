class StaffCreateCourseAssignmentsSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :description

  # has_many :course_units
  has_many :units, through: :course_units
  has_many :weeks


end
