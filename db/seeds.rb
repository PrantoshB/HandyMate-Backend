cities = ["New York", "Los Angeles", "Chicago", 
"Houston", "Phoenix", "Philadelphia", "San Antonio"]
cities.each do |city|
    Location.create(name: city)
end

User.create(full_name: "Roy", role: "admin", email: "royutsargo@gmail.com", password: "123456")
users = ["John", "Jane", "Jack", "Jill", "Joe", "Jenny", "Jim"]
users.each do |user|
    User.create(full_name: user, role: "user", email: user+"@gmail.com", password: "123456")
end

services = ["Plumbing", "Electrical", "Carpentry", "Cleaning", "Painting", "Gardening", "Moving"]
services.each do |service|
    Service.create(name: service, image: 'https://source.unsplash.com/random/?'+service)
end

reservations = [
    # {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 1, user_id: 1, service_id: 1},
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 2, user_id: 1, service_id: 2},
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 3, user_id: 1, service_id: 3}
]

reservations.each do |reservation|  
    Reservation.create(reservation)
end