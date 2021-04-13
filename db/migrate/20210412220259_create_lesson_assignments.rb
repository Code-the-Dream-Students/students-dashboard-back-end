class CreateLessonAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_assignments do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
