class UnitLesson < ApplicationRecord
  belongs_to :unit
  belongs_to :lesson

  # validates_presence_of :unit_id, :lesson_id
  # validates_numericality_of :unit_id, :lesson_id 
  #   :only_integer => true

end
