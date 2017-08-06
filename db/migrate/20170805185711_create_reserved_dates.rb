class CreateReservedDates < ActiveRecord::Migration[5.0]
  def change
    create_table :reserved_dates do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.references :reservation, foreign_key: true, index: true
      t.references :vehicle, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
