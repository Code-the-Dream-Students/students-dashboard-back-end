class CreateMentorCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :mentor_courses do |t|
      t.integer :mentor_id
      t.integer :course_id

      t.timestamps
    end
    add_index :mentor_courses, :mentor_id
    add_index :mentor_courses, :course_id
  end
end
