class StudentMaterial < ApplicationRecord
  belongs_to :student
  belongs_to :cohort
  belongs_to :material

  validates_presence_of :student, :cohort, :material

end
