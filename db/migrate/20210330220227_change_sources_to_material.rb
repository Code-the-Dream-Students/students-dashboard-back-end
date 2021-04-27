class ChangeSourcesToMaterial < ActiveRecord::Migration[6.0]
  def change
    rename_table :sources, :materials
  end
end
