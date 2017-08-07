class RemoveVehicleIdCreateReference < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :vehicle_id
    add_reference :reservations, :vehicle, foreign_key: true, index: true
  end
end
