class CreateStudentWeeklyProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_weekly_progresses do |t|
      t.integer :total_progress
      t.integer :week_number
      t.integer :course_id
      t.integer :student_id
      t.string :assignment_submission
      t.integer :instructions_progress
      t.integer :resources_progress
      t.integer :assignment_progress
      t.integer :unit_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
