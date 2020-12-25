class StudentCourse < ApplicationRecord
    belongs_to :student_weekly_progress
    belongs_to :student
end
