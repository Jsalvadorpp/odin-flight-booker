class FlightsController < ApplicationController\

    def index
        @flights = Flight.all
        @airports = Airport.all.map { |airport| [airport.code, airport.id] }
    end
end
