class Flight < ApplicationRecord
    belongs_to :from_airport , class_name: :Airport , foreign_key: :from_airport_id
    belongs_to :to_airport, class_name: :Airport, foreign_key: :to_airport_id
    has_many :passengers , through: :bookings
    has_many :bookings
  
    default_scope { where("flight_date > ?",DateTime.now).order("flight_date ASC") }
end
