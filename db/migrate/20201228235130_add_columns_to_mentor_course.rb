class AddColumnsToMentorCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :mentor_courses, :date, :date
    add_column :mentor_courses, :time, :time
  end
end
