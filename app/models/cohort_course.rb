class CohortCourse < ApplicationRecord
  belongs_to :cohort
  belongs_to :course

  validates_presence_of :cohort, :course
end
