class StudentCourseSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :course
  belongs_to :student
end
