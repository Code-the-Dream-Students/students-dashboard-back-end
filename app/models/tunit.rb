class Tunit < ApplicationRecord
  has_many :tcourse_tunits
  has_many :tcourses, through: :tcourse_tunits
end
