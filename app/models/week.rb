class Week < ApplicationRecord
  belongs_to :course
  belongs_to :unit
  belongs_to :lesson

  # validates_presence_of :week_number, :course, :unit, :lesson
  # validates_numericality_of :week_number, :course_id, :unit_id, :lesson_id,
  #   :only_integer => true

end
