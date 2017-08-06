class ReservedDate < ApplicationRecord
    belongs_to :reservation
    belongs_to :vehicle

    validates_presence_of :start_date, :end_date

    def self.availability
      (reserved.start_date.to_date..reserved.end_date.to_date).map{ |date| date.strftime("%b %d, %Y") }
    end
end
