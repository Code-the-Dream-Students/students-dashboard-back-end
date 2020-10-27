class Unit < ApplicationRecord
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :lessons
end
