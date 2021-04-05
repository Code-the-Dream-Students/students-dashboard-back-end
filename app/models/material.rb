class Material < ApplicationRecord
    has_many :lesson_materials
    has_many :lessons, through: :lesson_materials


    validates_presence_of :source_title, :link, :on => :create

    validates_length_of :source_title, :minimum => 2, :allow_nil => true

    validates_format_of :link, 
    :with => /\Ahttps?:\/\/.{0,}/,
    :message => "bad format"
end
