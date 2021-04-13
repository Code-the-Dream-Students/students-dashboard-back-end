class RemoveColumnsFromMaterials < ActiveRecord::Migration[6.0]
  def change
    remove_reference :materials, :cohort, null: false, foreign_key: true
    remove_reference :materials, :student, null: false, foreign_key: true
  end
end
