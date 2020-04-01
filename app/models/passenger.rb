class Passenger < ApplicationRecord
    has_one :flight , through: :bookings
end
