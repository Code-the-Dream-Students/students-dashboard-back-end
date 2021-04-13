class CreateStudentMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :student_materials do |t|
      t.references :student, null: false, foreign_key: true
      t.references :cohort, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
