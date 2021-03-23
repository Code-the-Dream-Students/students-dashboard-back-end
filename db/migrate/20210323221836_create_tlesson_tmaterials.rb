class CreateTlessonTmaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :tlesson_tmaterials do |t|
      t.integer :tlesson_id
      t.integer :tmaterial_id

      t.timestamps
    end
    add_index :tlesson_tmaterials, :tlesson_id
    add_index :tlesson_tmaterials, :tmaterial_id
  end
end
