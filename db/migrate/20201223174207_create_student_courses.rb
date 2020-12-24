class CreateStudentCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_courses do |t|
      t.integer :course_id
      t.integer :student_id
      t.integer :week_number

      t.timestamps
    end
  end
end
