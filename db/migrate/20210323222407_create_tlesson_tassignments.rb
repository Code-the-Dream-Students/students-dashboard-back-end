class CreateTlessonTassignments < ActiveRecord::Migration[6.0]
  def change
    create_table :tlesson_tassignments do |t|
      t.integer :tlesson_id
      t.integer :tassignment_id

      t.timestamps
    end
    add_index :tlesson_tassignments, :tlesson_id
    add_index :tlesson_tassignments, :tassignment_id
  end
end
