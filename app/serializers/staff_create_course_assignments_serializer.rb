class StaffCreateCourseAssignmentsSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  # has_many :course_units
  has_many :units, through: :course_units
  has_many :weeks

end
