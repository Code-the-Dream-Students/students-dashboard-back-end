class LessonAssignment < ApplicationRecord
  belongs_to :lesson
  belongs_to :assignment

  validates_presence_of :lesson, :assignment
end
