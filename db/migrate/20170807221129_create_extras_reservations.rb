class CreateExtrasReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :extras_reservations do |t|
      t.references :extra, foreign_key: true, index: true
      t.references :reservation, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
