class CreateWeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :weeks do |t|
      t.integer :week_number
      t.integer :course_id
      t.integer :unit_id
      t.integer :lesson_id
      t.date :start_date

      t.timestamps
    end
    add_index :weeks, :course_id
    add_index :weeks, :unit_id
    add_index :weeks, :lesson_id
  end
end
