class Student < ApplicationRecord
  belongs_to :user
  has_one :student_course
  has_many :student_weekly_progresses
end
