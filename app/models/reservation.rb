class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  has_and_belongs_to_many :extras, through: :extras_reservation

  

end
