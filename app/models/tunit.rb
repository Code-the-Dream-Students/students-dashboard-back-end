class Tunit < ApplicationRecord
  has_many :tcourse_tunits
  has_many :tcourses, through: :tcourse_tunits
  has_many :tunit_tlessons
  has_many :tlessons, through: :tunit_tlessons
end
