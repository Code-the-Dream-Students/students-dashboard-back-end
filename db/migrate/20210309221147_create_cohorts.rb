class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.text :description
      t.date :start_date

      t.timestamps
    end
  end
end
