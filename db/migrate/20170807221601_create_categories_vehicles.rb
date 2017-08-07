class CreateCategoriesVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_vehicles do |t|
      t.references :vehicle, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
