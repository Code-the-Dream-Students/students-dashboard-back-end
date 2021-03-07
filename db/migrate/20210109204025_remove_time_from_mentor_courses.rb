class RemoveTimeFromMentorCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :mentor_courses, :time, :time
  end
end
