class StudentAssignmentSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :cohort_id, :material_id, :status, :assignment_submission, :lesson

  belongs_to :student
  belongs_to :cohort
  belongs_to :material
  belongs_to :assignment

  def lesson
    object.assignment.lesson
  end
end
