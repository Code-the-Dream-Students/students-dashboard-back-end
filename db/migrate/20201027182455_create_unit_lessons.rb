class CreateUnitLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_lessons do |t|
      t.integer :unit_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
