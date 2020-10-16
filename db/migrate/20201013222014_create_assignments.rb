class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :github_url
      t.integer :status

      t.timestamps
    end
  end
end
