class CourseUnit < ApplicationRecord
  belongs_to :course
  belongs_to :unit

  # validates_presence_of :course_id, :unit_id
  # validates_numericality_of :course_id, :unit_id, 
  #   :only_integer => true

end
