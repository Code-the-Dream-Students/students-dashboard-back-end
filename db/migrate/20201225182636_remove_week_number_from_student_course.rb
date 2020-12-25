class RemoveWeekNumberFromStudentCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_courses, :week_number, :integer
  end
end
