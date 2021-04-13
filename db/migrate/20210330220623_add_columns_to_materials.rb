class AddColumnsToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_reference :materials, :lesson, null: false, foreign_key: true
    add_reference :materials, :cohort, null: false, foreign_key: true
    add_reference :materials, :student, null: false, foreign_key: true
    add_column :materials, :description, :string
  end
end
