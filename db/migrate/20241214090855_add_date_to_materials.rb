class AddDateToMaterials < ActiveRecord::Migration[7.2]
  def change
    add_column :materials, :date, :date
  end
end
