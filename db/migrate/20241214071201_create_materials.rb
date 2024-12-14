class CreateMaterials < ActiveRecord::Migration[7.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
  def up
    Material.where(date: nil).update_all(date: Date.today)
  end

  def down
    # No se necesita revertir
  end
end
