class AddStudentToStudentWeeklyProgress < ActiveRecord::Migration[6.0]
  def change
    add_reference :student_weekly_progresses, :student, null: false, foreign_key: true
  end
end
