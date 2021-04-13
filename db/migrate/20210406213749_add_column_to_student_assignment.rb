class AddColumnToStudentAssignment < ActiveRecord::Migration[6.0]
  def change
    add_reference :student_assignments, :assignment, null: false, foreign_key: true
  end
end
