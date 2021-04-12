class TcourseTunit < ApplicationRecord
  belongs_to :tcourse
  belongs_to :tunit

  validates_presence_of :tcourse, :tunit
end
