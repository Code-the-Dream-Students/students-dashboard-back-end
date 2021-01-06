class StudentWeeklyProgress < ApplicationRecord
    belongs_to :week
    belongs_to :student
    has_many :registered_mentor_sessions
end
