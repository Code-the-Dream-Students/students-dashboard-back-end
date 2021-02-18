class AddStartAndEndTimeToMentorCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :mentor_courses, :start_time, :time
    add_column :mentor_courses, :end_time, :time
  end
end
