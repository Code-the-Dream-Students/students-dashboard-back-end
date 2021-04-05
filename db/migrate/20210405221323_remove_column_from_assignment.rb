class RemoveColumnFromAssignment < ActiveRecord::Migration[6.0]
  def change
    remove_reference :assignments, :cohort, null: false, foreign_key: true
  end
end
