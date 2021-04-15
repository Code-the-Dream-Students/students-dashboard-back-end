class StudentAssignment < ApplicationRecord
  belongs_to :student
  # belongs_to :cohort
  belongs_to :material
  belongs_to :assignment
end
