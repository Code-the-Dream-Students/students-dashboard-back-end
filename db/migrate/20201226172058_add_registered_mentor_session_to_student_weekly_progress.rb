class AddRegisteredMentorSessionToStudentWeeklyProgress < ActiveRecord::Migration[6.0]
  def change
    add_reference :student_weekly_progresses, :registered_mentor_session, null: false, foreign_key: true
  end
end
