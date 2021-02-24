class AddColumnToAssignment < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :resources, :text
    add_column :assignments, :assignment, :text
  end
end
