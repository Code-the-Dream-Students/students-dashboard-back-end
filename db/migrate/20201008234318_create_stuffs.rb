class CreateStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :stuffs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
