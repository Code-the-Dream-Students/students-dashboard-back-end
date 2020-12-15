class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :unit_name
      t.text :description

      t.timestamps
    end
  end
end
