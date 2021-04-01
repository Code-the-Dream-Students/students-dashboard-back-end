class Tmaterial < ApplicationRecord
  has_many :tlesson_tmaterials
  has_many :tlessons, through: :tlesson_tmaterials

  validates_presence_of :title, :on => :create

  validates_length_of :title, :platform, :treehouse_type, :instructor, :duration, :learning_objectives, :tools, :notes 
    :minimum => 2,
    :allow_nil => true,
    :allow_blank => true

  validates_format_of :url, 
    :with => /\Ahttps?:\/\/.{0,}/,
    :message => "bad format",
    :allow_nil => true,
    :allow_blank => true
end
