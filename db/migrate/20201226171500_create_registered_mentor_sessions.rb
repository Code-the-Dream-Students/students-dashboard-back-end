class CreateRegisteredMentorSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :registered_mentor_sessions do |t|
      t.integer :week_number
      t.integer :student_id

      t.timestamps
    end
  end
end
