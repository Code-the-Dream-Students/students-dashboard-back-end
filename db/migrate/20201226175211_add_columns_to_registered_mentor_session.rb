class AddColumnsToRegisteredMentorSession < ActiveRecord::Migration[6.0]
  def change
    add_column :registered_mentor_sessions, :comments, :string
    add_column :registered_mentor_sessions, :date, :date
    add_column :registered_mentor_sessions, :time, :time
  end
end
