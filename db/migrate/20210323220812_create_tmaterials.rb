class CreateTmaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :tmaterials do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :platform
      t.string :treehouse_type
      t.string :instructor
      t.string :duration
      t.text :learning_objectives
      t.string :tools
      t.text :notes

      t.timestamps
    end
  end
end
