class RegisteredMentorSessionSerializer < ActiveModel::Serializer
  attributes :week_number, :comments

  belongs_to :mentor_course
end

# class RegisteredMentorSessionSerializer
#   include JSONAPI::Serializer
#   attributes :week_number, :student_id, :comments
# end

