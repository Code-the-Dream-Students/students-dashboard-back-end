class StudentWeeklyProgress < ApplicationRecord
    belongs_to :student_course
    # has_one :week
end
