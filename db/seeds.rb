# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# generate Airport data
Airport.create(airport: 'NYC')
Airport.create(airport: 'LA')
Airport.create(airport: 'SAF')
Airport.create(airport: 'ZEL')
Airport.create(airport: 'AUS')
Airport.create(airport: 'FR')
Airport.create(airport: 'YEL')

# generate flight listings

Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(2), flight_time: 5, departure_time: "10/11/2023 11:00")
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(3), flight_time: 7, departure_time: "10/11/2023 12:00")
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(4), flight_time: 10, departure_time: "10/12/2023 11:00")
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(6), flight_time: 16, departure_time: "10/11/2023 16:00")
Flight.create(departure_airport: Airport.find(2), arrival_airport: Airport.find(5), flight_time: 8, departure_time: "10/11/2023 18:00")
Flight.create(departure_airport: Airport.find(2), arrival_airport: Airport.find(1), flight_time: 5, departure_time: "10/13/2023 11:00")
Flight.create(departure_airport: Airport.find(2), arrival_airport: Airport.find(3), flight_time: 7, departure_time: "10/12/2023 17:00")
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(2), flight_time: 5, departure_time: "10/11/2023 17:30")
Flight.create(departure_airport: Airport.find(1), arrival_airport: Airport.find(2), flight_time: 5, departure_time: "10/12/2023 15:00")
Flight.create(departure_airport: Airport.find(3), arrival_airport: Airport.find(2), flight_time: 5, departure_time: "10/12/2023 14:00")
