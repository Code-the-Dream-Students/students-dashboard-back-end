class AddColumnsToLessons < ActiveRecord::Migration[6.0]
  def change
    # add_reference :lessons, :cohort, null: false, foreign_key: true
    add_column :lessons, :description, :string
  end
end
