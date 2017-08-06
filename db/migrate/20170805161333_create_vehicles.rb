class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :year, null: false
      t.string :make, null: false
      t.string :model, null:false
      t.string :color, null:false
      t.integer :serial_number, null: false
      t.string :current_location, null: false
      t.references :category, foreign_key: true, index:true

      t.timestamps(null: false)
    end
  end
end
