class AddColumnToStudentWeeklyProgress < ActiveRecord::Migration[6.0]
  def change
    add_column :student_weekly_progresses, :student_id, :integer
  end
end
