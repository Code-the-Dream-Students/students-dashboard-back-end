class StudentWeeklyProgress < ApplicationRecord
    belongs_to :week
    belongs_to :student_course
    has_many :registered_mentor_sessions
end
