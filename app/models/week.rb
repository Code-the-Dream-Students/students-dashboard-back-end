class Week < ApplicationRecord
  belongs_to :course
  belongs_to :unit
  belongs_to :lesson
end
