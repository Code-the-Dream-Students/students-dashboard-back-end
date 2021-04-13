class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.text :description
      t.string :duration

      t.timestamps
    end
  end
end
