class Student < ApplicationRecord
  belongs_to :user
  has_many :student_weekly_progresses
  has_one :student_course
end
