class CreateTunitTlessons < ActiveRecord::Migration[6.0]
  def change
    create_table :tunit_tlessons do |t|
      t.integer :tunit_id
      t.integer :tlesson_id

      t.timestamps
    end
    add_index :tunit_tlessons, :tunit_id
    add_index :tunit_tlessons, :tlesson_id
  end
end
