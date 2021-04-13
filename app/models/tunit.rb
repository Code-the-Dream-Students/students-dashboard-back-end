class Tunit < ApplicationRecord
  has_many :tcourse_tunits
  has_many :tcourses, through: :tcourse_tunits
  has_many :tunit_tlessons
  has_many :tlessons, through: :tunit_tlessons

  validates_presence_of :name, :on => :create

  validates_length_of :name, :description, :duration, 
    :minimum => 2,
    :allow_nil => true,
    :allow_blank => true
end
