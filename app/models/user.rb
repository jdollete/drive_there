class User < ApplicationRecord

  has_many :reservations

  validates_presence_of :name, :email, :location
  validates_uniqueness_of :email
end
