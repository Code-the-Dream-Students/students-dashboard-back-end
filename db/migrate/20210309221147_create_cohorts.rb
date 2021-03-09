class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
