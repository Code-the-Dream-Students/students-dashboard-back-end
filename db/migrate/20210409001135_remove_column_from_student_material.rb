class RemoveColumnFromStudentMaterial < ActiveRecord::Migration[6.0]
  def change
    remove_reference :student_materials, :lesson, null: false, foreign_key: true
  end
end
