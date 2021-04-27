class CreateTcourseTunits < ActiveRecord::Migration[6.0]
  def change
    create_table :tcourse_tunits do |t|
      t.integer :tcourse_id
      t.integer :tunit_id

      t.timestamps
    end
    add_index :tcourse_tunits, :tcourse_id
    add_index :tcourse_tunits, :tunit_id
  end
end
