class StudentWeeklyProgress < ApplicationRecord
    belongs_to :week
    belongs_to :student
    has_many :registered_mentor_sessions

    after_save :update_total_progress

    def update_total_progress
        self.total_progress = self.instructions_progress + self.assignment_progress + self.resources_progress
    end
end
