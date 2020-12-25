class StudentWeeklyProgress < ApplicationRecord
    belongs_to :week
    belongs_to :student_course
end
