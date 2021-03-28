class TlessonTmaterial < ApplicationRecord
  belongs_to :tlesson
  belongs_to :tmaterial
  
  validates_presence_of :tlesson, :tmaterial

end
