class TunitTlesson < ApplicationRecord
  belongs_to :tunit
  belongs_to :tlesson

  validates_presence_of :tunit, :tlesson
end
