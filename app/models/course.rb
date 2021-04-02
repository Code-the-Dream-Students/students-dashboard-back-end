class Course < ApplicationRecord
  has_many :course_units
  has_many :units, through: :course_units
  has_many :cohort_courses
  has_many :cohorts, through: :cohort_courses
  # belongs_to :cohort
  # has_many :weeks
  # has_many :mentor_courses
  # has_many :mentors, through: :mentor_courses
  
  validates_presence_of :name, :description,
    :on => :create

  validates_length_of :name, :description,
    :minimum => 2,
    :allow_nil => true

end
