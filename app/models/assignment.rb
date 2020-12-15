class Assignment < ApplicationRecord
  belongs_to :lesson

  validates_presence_of :lesson, :on => :create
  validates_length_of :description, 
    :minimum => 2, 
    :allow_nil => true,
    :allow_blank => true

  validates_format_of :link, 
    :with => /\Ahttps?:\/\/.{0,}/,
    :message => "bad format",
    :allow_nil => true,
    :allow_blank => true

end
