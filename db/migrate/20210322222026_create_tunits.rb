class CreateTunits < ActiveRecord::Migration[6.0]
  def change
    create_table :tunits do |t|
      t.string :name
      t.string :description
      t.string :duration

      t.timestamps
    end
  end
end
