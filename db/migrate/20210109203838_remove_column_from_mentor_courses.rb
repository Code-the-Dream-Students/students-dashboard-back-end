class RemoveColumnFromMentorCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :mentor_courses, :date, :date
  end
end
