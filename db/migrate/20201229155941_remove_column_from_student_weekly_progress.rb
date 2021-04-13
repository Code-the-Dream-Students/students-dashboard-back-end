class RemoveColumnFromStudentWeeklyProgress < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_weekly_progresses, :student_id, :integer
  end
end
