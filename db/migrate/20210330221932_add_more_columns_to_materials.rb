class AddMoreColumnsToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :platform, :string
    add_column :materials, :treehouse_type, :string
    add_column :materials, :instructor, :string
    add_column :materials, :duration, :string
    add_column :materials, :learning_objectives, :text
    add_column :materials, :notes, :text
  end
end
