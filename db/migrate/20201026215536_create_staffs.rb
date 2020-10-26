class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
