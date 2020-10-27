class Unit < ApplicationRecord
  has_many :course_units
  has_many :courses, through: :course_units
  has_many :unit_lessons
  has_many :lessons, through: :unit_lessons
end
