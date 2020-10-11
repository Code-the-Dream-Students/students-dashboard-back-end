class RemoveUsernameFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :username, :string
  end
end
