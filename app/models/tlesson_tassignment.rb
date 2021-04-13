class TlessonTassignment < ApplicationRecord
  belongs_to :tlesson
  belongs_to :tassignment

  validates_presence_of :tlesson, :tassignment

end
