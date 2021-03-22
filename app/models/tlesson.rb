class Tlesson < ApplicationRecord
  has_many :tunit_tlessons
  has_many :tlessons, through: :tunit_tlessons
end
