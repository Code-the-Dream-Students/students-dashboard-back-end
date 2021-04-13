class Unit < ApplicationRecord
  has_many :course_units
  has_many :courses, through: :course_units
  has_many :unit_lessons
  has_many :lessons, through: :unit_lessons
  belongs_to :cohort
  # has_many :weeks

  validates_presence_of :name, 
    :on => :create

  validates_length_of :name, :description, :duration,
    :minimum => 2,
    :allow_nil => true

end
