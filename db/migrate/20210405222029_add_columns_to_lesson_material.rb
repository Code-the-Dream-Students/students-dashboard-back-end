class AddColumnsToLessonMaterial < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_materials, :lesson_id, :integer
    add_column :lesson_materials, :material_id, :integer
  end
end
