class Vehicle < ApplicationRecord
  has_and_belongs_to_many :categories, through: :categories_vehicle

  validates_presence_of :year, :make, :model, :color, :serial_number
  validates_uniqueness_of :serial_number
end
