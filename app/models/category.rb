class Category < ApplicationRecord
  has_many :vehicles

  validates_presence_of :vehicle_type
  validates_uniqueness_of :vehicle_type
end
