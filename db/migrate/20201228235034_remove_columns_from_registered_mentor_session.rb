class RemoveColumnsFromRegisteredMentorSession < ActiveRecord::Migration[6.0]
  def change
    remove_column :registered_mentor_sessions, :date, :date
    remove_column :registered_mentor_sessions, :time, :time
  end
end
