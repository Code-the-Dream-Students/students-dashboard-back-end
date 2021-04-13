class CreateCohortCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :cohort_courses do |t|
      t.integer :cohort_id
      t.integer :course_id

      t.timestamps
    end
    add_index :cohort_courses, :cohort_id
    add_index :cohort_courses, :course_id
  end
end
