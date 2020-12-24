class StudentCourse < ApplicationRecord
    has_one :student_weekly_progress
    belongs_to :student
end
