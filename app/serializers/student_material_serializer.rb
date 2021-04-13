class StudentMaterialSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :cohort_id, :material_id, :status

  belongs_to :student
  belongs_to :cohort
  belongs_to :material
end
