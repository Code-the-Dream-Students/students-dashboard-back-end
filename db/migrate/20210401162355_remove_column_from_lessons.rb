class RemoveColumnFromLessons < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :lesson_name, :string
    add_column :lessons, :name, :string
  end
end
