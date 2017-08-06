class Reservation < ApplicationRecord
  belongs_to :user
  has_many :reserved_date
  has_many :vehicle, through: :reserved_date


end
