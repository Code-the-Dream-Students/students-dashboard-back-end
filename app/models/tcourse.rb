class Tcourse < ApplicationRecord
  has_many :tcourse_tunits
  has_many :tunits, through: :tcourse_tunits
  
  validates_presence_of :name,
    :on => :create

  # validates_length_of :name, :description,
  #   :minimum => 2,
  #   :allow_nil => true,
  #   :allow_blank => true
  
end
