# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airport_list = [
    'VEN','USA','CHE','SWE','SUR','ESP','RUS','MEX','JPN','ITA','ECU''COL'
]

airport_list.each do |code|
    Airport.create(code: code)
end

airports = Airport.all

airports.each do |from_airport|

    airports.each do |to_airport|

        date = DateTime.now + rand(0..8).hour
        duration = Time.now + rand(1..6).hour

        new_flight = {
            from_airport: from_airport,
            to_airport: to_airport,
            flight_date: date,
            flight_duration: duration
        }
        Flight.create(new_flight) if from_airport != to_airport
    end
end


