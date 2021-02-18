class AddDayToMentorCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :mentor_courses, :day, :string
  end
end
