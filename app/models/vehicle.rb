class Vehicle < ApplicationRecord
  belongs_to :categories
  has_many :reserved_dates
  has_many :reservations, through: :reserved_dates

  validates_presence_of :year, :make, :model, :color, :current_location, :serial_number
  validates_uniqueness_of :serial_number
end
