class Lesson < ApplicationRecord
  has_many :sources
  has_and_belongs_to_many :units
end
