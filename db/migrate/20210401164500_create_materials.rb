class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|

      t.timestamps
    end
  end
end
