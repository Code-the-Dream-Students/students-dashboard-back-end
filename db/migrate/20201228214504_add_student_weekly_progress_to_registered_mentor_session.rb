class AddStudentWeeklyProgressToRegisteredMentorSession < ActiveRecord::Migration[6.0]
  def change
    add_reference :registered_mentor_sessions, :student_weekly_progress, null: false, foreign_key: true
  end
end
