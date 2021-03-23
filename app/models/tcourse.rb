class Tcourse < ApplicationRecord
  has_many :tcourse_tunits
  has_many :tunits, through: :tcourse_tunits
end
