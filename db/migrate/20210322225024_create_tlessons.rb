class CreateTlessons < ActiveRecord::Migration[6.0]
  def change
    create_table :tlessons do |t|
      t.string :name
      t.string :duration
      t.text :learning_objectives

      t.timestamps
    end
  end
end
