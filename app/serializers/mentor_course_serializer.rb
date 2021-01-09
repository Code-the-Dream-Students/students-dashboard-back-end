class MentorCourseSerializer < ActiveModel::Serializer
  attributes :message, :id, :day, :start_time, :end_time

  belongs_to :mentor
  belongs_to :course

  def message
    message = "Success"
  end

  # def start
  #   object.start_time.to_time.strftime("%I:%M%P")
  # end
  # def end
  #   object.end_time.to_time.strftime("%I:%M%P")
  # end
end
