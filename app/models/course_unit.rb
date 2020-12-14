class CourseUnit < ApplicationRecord
  belongs_to :course
  belongs_to :unit

  # validates_presence_of :course, :unit

end
