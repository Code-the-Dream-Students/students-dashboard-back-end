class CohortCourse < ApplicationRecord
  belongs_to :cohort
  belongs_to :course
end
