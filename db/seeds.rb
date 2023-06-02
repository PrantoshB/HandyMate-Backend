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

Service.create(name: "Electrician", details: "HandyMate's electricians are skilled in handling a wide range of electrical services. From installation and repair of lighting fixtures to electrical wiring and troubleshooting, we ensure your electrical systems are safe and functioning optimally. Our reliable and experienced electricians prioritize your safety and provide efficient solutions for your electrical needs.", price: 140, duration: 2, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/electrician.png?alt=media&token=0dd84c61-6faf-4868-8f77-d3a3076c2a64")

Service.create(name: "Plumber", details: "Whether it's a leaky faucet, a clogged drain, or a plumbing emergency, HandyMate has you covered. Our team of experienced plumbers is skilled in handling a wide range of plumbing issues. We provide timely and reliable solutions to ensure your plumbing systems are functioning properly.", price: 97, duration: 2, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/plumber.png?alt=media&token=4f2be459-ee6e-45be-befc-07b52567e4bf")

Service.create(name: "Painting", details: "Transform your home with HandyMate's professional painting services. Our skilled painters are experts in color selection, surface preparation, and flawless paint application. Whether you need a single room painted or your entire house refreshed, we deliver outstanding results that enhance the beauty and ambiance of your space.", price: 120, duration: 4, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/painter.png?alt=media&token=99424a62-60d5-4de3-bf70-abe17b187399")


Service.create(name: "Cleaning", details: "HandyMate offers professional cleaning services to ensure your home is sparkling clean and free from dust, dirt, and grime. Our skilled cleaners use high-quality equipment and eco-friendly cleaning products to give your space a thorough and refreshing clean.", price: 115, duration: 4, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/cleaning.png?alt=media&token=3b0b8b7e-4b0a-4b0e-9b0a-9b0b0b0b0b0b")

Service.create(name: "Gardening", details: "HandyMate's gardening services help you maintain a beautiful and vibrant outdoor space. Our experienced gardeners offer a range of services, including lawn care, pruning, planting, and garden design. We work closely with you to create and maintain a stunning garden that complements your home.", price: 100, duration: 1, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/gardening.png?alt=media&token=3b0b8b7e-4b0a-4b0e-9b0a-9b0b0b0b0b0b")

Service.create(name: "Carpentry", details: "HandyMate's carpentry services are perfect for all your woodworking needs. From custom furniture and cabinets to repairs and installations, our skilled carpenters deliver exceptional craftsmanship. We take pride in our attention to detail and use the finest materials to bring your vision to life.", price: 260, duration: 3, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/carpenter.png?alt=media&token=38d9d552-5d70-4c9f-80f8-7e2ab2fde358")

Service.create(name: "Moving", details: "Relocating can be stressful, but HandyMate's moving services make the process easier. Our professional movers handle all aspects of your move, from packing and loading to transportation and unloading. With careful attention to detail and a focus on efficiency, we ensure a smooth and hassle-free moving experience.", price: 98, duration: 5, image: "https://firebasestorage.googleapis.com/v0/b/handymate-services.appspot.com/o/moving.png?alt=media&token=bbccedc6-f5d8-4488-910b-b6522e6e3e32")


reservations = [
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 2, user_id: 1, service_id: 2},
    {start_date: "2021-05-01", end_date: "2021-05-03", location_id: 3, user_id: 1, service_id: 3}
]

reservations.each do |reservation|  
    Reservation.create(reservation)
end