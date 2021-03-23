class Tlesson < ApplicationRecord
  has_many :tunit_tlessons
  has_many :tunits, through: :tunit_tlessons
  has_many :tlesson_tmaterials
  has_many :tmaterials, through: :tlesson_tmaterials
  has_many :tlesson_tassignments
  has_many :tassignments, through: :tlesson_tassignments
end
