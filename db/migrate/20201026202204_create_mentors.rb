class CreateMentors < ActiveRecord::Migration[6.0]
  def change
    create_table :mentors do |t|
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
