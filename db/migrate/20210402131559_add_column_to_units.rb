class AddColumnToUnits < ActiveRecord::Migration[6.0]
  def change
    add_reference :units, :cohort, null: false, foreign_key: true
  end
end
