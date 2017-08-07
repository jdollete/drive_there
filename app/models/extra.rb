class Extra < ApplicationRecord
  has_and_belongs_to_many :reservations, through: :extras_reservation

end
