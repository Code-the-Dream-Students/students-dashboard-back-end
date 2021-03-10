class Cohort < ApplicationRecord
  has_many :cohort_courses
  has_many :courses, through: :cohort_courses
end
