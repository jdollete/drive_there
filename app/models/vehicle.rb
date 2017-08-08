class Vehicle < ApplicationRecord
  has_and_belongs_to_many :categories, through: :categories_vehicle
  has_many :reservations
  belongs_to :location

  validates_presence_of :year, :make, :model, :color, :serial_number
  validates_uniqueness_of :serial_number

  def top_five_rentals
    top_five = Reservation.group("vehicle_id").count.sort_by { |k, v| -v}[0..4]
    top_five.each do |element|
      Vehicle.where("id = ?", element[0])
    end
  end
end
