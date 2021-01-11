class StudentCourseSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :course
end
