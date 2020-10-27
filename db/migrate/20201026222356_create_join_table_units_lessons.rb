class CreateJoinTableUnitsLessons < ActiveRecord::Migration[6.0]
  def change
    create_join_table :units, :lessons do |t|
      t.index [:unit_id, :lesson_id]
      t.index [:lesson_id, :unit_id]
    end
  end
end
