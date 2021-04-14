class CreateStudentAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :student_assignments do |t|
      t.references :student, null: false, foreign_key: true
      # t.references :cohort, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :status
      t.string :assignment_submission

      t.timestamps
    end
  end
end
