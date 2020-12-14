class LessonSource < ApplicationRecord
  belongs_to :lesson
  belongs_to :source

  # validates_presence_of :lesson_id, :source_id
  # validates_numericality_of :lesson_id, :source_id, 
  #   :only_integer => true
    
end
