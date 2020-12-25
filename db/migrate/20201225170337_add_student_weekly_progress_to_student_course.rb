class AddStudentWeeklyProgressToStudentCourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :student_courses, :student_weekly_progress, null: false, foreign_key: true
  end
end
