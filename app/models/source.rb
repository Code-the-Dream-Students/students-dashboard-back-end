class Source < ApplicationRecord
  has_many :lesson_sources
  has_many :lessons, through: :lesson_sources
end
