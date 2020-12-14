class Week < ApplicationRecord
  belongs_to :course
  belongs_to :unit
  belongs_to :lesson

  validates_presence_of :week_number, :course, :unit, :lesson
  validates_numericality_of :week_number, :only_integer => true

end
