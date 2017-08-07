class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :location, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :completed, default: false
      t.float :total_price
      t.references :user, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
