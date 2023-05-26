cities = ["New York", "Los Angeles", "Chicago", 
"Houston", "Phoenix", "Philadelphia", "San Antonio"]
cities.each do |city|
    Location.create(name: city)
end
