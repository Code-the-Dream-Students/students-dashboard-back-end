class StudentWeeklyProgressSerializer < ActiveModel::Serializer
  attributes :week_number, :week_id, :total_progress, :assignment_progress, :resources_progress, :instructions_progress, :assignment_submission

  has_many :registered_mentor_sessions
  belongs_to :week
end

# class StudentWeeklyProgressSerializer
#   include JSONAPI::Serializer
#   attributes :total_progress, :assignment_progress, :resources_progress, :instructions_progress, :week_number, :week_id, :student_id, :assignment_submission

#   has_many :registered_mentor_sessions
# end
