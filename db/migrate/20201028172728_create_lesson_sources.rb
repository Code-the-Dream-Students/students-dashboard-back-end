class CreateLessonSources < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_sources do |t|
      t.integer :lesson_id
      t.integer :source_id

      t.timestamps
    end
  end
end
