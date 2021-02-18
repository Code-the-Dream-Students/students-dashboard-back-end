class RegisteredMentorSession < ApplicationRecord
    belongs_to :student_weekly_progress
    belongs_to :mentor_course
end
