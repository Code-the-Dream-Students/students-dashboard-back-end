class Tmaterial < ApplicationRecord
  has_many :tlesson_tmaterials
  has_many :tlessons, through: :tlesson_tmaterials
end
