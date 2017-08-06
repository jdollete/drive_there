class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :additional_equipment
      t.boolean :completed, default: false
      t.float :total_price
      t.references :user, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
