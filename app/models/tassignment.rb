class Tassignment < ApplicationRecord
  has_many :tlesson_tassignments
  has_many :tlessons, through: :tlesson_tassignments

  validates_presence_of :title, :on => :create
  
  validates_length_of :title, :description, 
    :minimum => 2, 
    :allow_nil => true,
    :allow_blank => true

  validates_format_of :link, 
    :with => /\Ahttps?:\/\/.{0,}/,
    :message => "bad format",
    :allow_nil => true,
    :allow_blank => true
end
