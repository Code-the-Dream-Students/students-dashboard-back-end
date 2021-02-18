class AddMentorCourseToRegisteredMentorSession < ActiveRecord::Migration[6.0]
  def change
    add_reference :registered_mentor_sessions, :mentor_course, null: false, foreign_key: true
  end
end
