# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cities = ["New York", "Los Angeles", "Chicago", 
"Houston", "Phoenix", "Philadelphia", "San Antonio"]
cities.each do |city|
    Location.create(name: city)
end
 
# users = ["John", "Jane", "Jack", "Jill", "Joe", "Jenny", "Jim"]
# users.each do |user|
#     User.create(full_name: user)
# end

services = ["Plumbing", "Electrical", "Carpentry", "Cleaning", "Painting", "Gardening", "Moving"]
services.each do |service|
    Service.create(name: service)
end

reservations = [
    # {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 1, user_id: 1, service_id: 1},
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 2, user_id: 1, service_id: 2},
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 3, user_id: 1, service_id: 3}
]

reservations.each do |reservation|  
    Reservation.create(reservation)
end