class RemoveEmailFromMentors < ActiveRecord::Migration[6.0]
  def change
    remove_column :mentors, :email, :string
  end
end
