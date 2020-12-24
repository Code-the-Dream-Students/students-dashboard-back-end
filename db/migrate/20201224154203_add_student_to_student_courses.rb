class AddStudentToStudentCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :student_courses, :student, null: false, foreign_key: true
  end
end
