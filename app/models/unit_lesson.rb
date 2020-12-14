class UnitLesson < ApplicationRecord
  belongs_to :unit
  belongs_to :lesson

  validates_presence_of :unit, :lesson

end
