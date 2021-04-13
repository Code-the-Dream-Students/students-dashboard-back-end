class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :lesson_name
      t.string :duration
      t.text :learning_objectives

      t.timestamps
    end
  end
end
