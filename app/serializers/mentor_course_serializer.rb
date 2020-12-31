class MentorCourseSerializer < ActiveModel::Serializer
  attributes :date, :time

  belongs_to :mentor
  belongs_to :course
end
