class AddUserToMentors < ActiveRecord::Migration[6.0]
  def change
    add_reference :mentors, :user, null: true, foreign_key: true
  end
end
