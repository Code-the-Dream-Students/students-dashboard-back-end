class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :link
      t.text :description
      t.integer :lesson_id

      t.timestamps
    end
    add_index :assignments, :lesson_id
  end
end
