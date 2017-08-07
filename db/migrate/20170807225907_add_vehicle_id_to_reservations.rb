class AddVehicleIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :vehicle_id, :integer
  end
end
