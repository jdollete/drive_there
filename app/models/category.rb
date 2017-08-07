class Category < ApplicationRecord
  has_and_belongs_to_many :vehicles, through: :categories_vehicle

  validates_presence_of :vehicle_type
  validates_uniqueness_of :vehicle_type
end
