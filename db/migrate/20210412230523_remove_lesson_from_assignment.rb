class RemoveLessonFromAssignment < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :lesson_id, :integer
  end
end
