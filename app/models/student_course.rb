class StudentCourse < ApplicationRecord
    has_many :student_weekly_progresses
    belongs_to :student
    # belongs_to :student_weekly_progress
end
