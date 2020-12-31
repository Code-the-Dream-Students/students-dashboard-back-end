class MentorCourseSerializer < ActiveModel::Serializer
  attributes :message, :date, :time

  belongs_to :mentor
  belongs_to :course

  def message
    message = "Success"
  end
end
