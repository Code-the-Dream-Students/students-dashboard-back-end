class Assignment < ApplicationRecord
  belongs_to :lesson

  validates_presence_of :link, :description, :lesson, :on => :create
  validates_length_of :description, :minimum => 2, :allow_nil => true
  validates_format_of :link, 
    :with => /\Ahttps?:\/\/.{0,}/,
    :message => "bad format"

end
