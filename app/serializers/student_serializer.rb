class StudentSerializer < ActiveModel::Serializer
  attributes :message, :student_id, :user_id, :first_name, :last_name, :enrolled

  belongs_to :user
  has_many :student_weekly_progresses do
    object.student_weekly_progresses.order(:week_number)
  end
  has_one :student_course

  def student_id
    student_id = object.id
  end

  def message
    message = "Success"
  end
end

# class StudentSerializer
#   include JSONAPI::Serializer
#   attributes :first_name, :last_name, :enrolled, :user_id

#   has_many :student_weekly_progresses
#   belongs_to :user
# end

