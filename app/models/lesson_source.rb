class LessonSource < ApplicationRecord
  belongs_to :lesson
  belongs_to :source

  validates_presence_of :lesson, :source
end
