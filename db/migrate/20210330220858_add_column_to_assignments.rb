class AddColumnToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_reference :assignments, :cohort, null: false, foreign_key: true
  end
end
