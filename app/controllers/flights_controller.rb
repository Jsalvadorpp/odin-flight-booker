class FlightsController < ApplicationController\

    def index
        @airports = Airport.all.map { |airport| [airport.code, airport.id] }
        @flights_departure_time = Flight.all.map{ 
            |flight| flight.flight_date.strftime("%I:%M %p")}.uniq
       
        @flights = Flight.all
        @flights = @flights.where(from_airport_id: params['from_airport']) if params['from_airport'].present?
        @flights = @flights.where(to_airport_id: params['to_airport']) if params['to_airport'].present?
        @flights = @flights.where(to_airport_id: params['to_airport']) if params['to_airport'].present?

        if params['departure_time'].present?
            @flights = @flights.select {|flight| flight.flight_date.strftime("%I:%M %p") == params['departure_time']}
        end

    end
end
