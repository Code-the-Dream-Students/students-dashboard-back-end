class Course < ApplicationRecord
  has_many :course_units
  has_many :units, through: :course_units
end
