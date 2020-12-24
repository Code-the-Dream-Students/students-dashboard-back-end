class RemoveDetailsFromStudentCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_courses, :course_id, :integer
    remove_column :student_courses, :student_id, :integer
  end
end
