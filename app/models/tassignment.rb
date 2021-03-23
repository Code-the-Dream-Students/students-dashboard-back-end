class Tassignment < ApplicationRecord
  has_many :tlesson_tassignments
  has_many :tlessons, through: :tlesson_tassignments
end
