class RemoveDetailsFromStudentWeeklyProgress < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_weekly_progresses, :course_id, :integer
    remove_column :student_weekly_progresses, :student_id, :integer
    remove_column :student_weekly_progresses, :lesson_id, :integer
    remove_column :student_weekly_progresses, :unit_id, :integer
  end
end
