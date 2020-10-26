class AddLessonToSources < ActiveRecord::Migration[6.0]
  def change
    add_column :sources, :lesson_id, :integer
    add_index :sources, :lesson_id
  end
end
