user1 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Richmond, VA")
user2 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Prince George, VA")
user3 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Jersey City, NJ")

category1 = Category.create(vehicle_type: "SUV")
category2 = Category.create(vehicle_type: "Truck")
category3 = Category.create(vehicle_type: "Coupe")
category4 = Category.create(vehicle_type: "Sedan")

location1 = Location.create(address: "32423 Glenn Street", city: "Richmond", state: "Virginia", zipcode: "23594")
location2 = Location.create(address: "32423 Broad Street", city: "Richmond", state: "Virginia", zipcode: "23594")
location3 = Location.create(address: "300 Grove Street", city: "Jersey City", state: "New Jersey", zipcode: "07302")

vehicle1 = Vehicle.create(year: "2011", make: "Honda", model: "Civic", color: "Black", serial_number: 123918, location_id: location1.id)
vehicle2 = Vehicle.create(year: "2012", make: "Honda", model: "Civic", color: "Black", serial_number: 123911, location_id: location2.id)
vehicle3 = Vehicle.create(year: "2013", make: "Honda", model: "Civic", color: "Black", serial_number: 123912, location_id: location3.id)

category_vehicle1 = CategoriesVehicle.create(vehicle_id: vehicle1.id, category_id: category3.id)
category_vehicle2 = CategoriesVehicle.create(vehicle_id: vehicle2.id, category_id: category3.id)
category_vehicle3 = CategoriesVehicle.create(vehicle_id: vehicle3.id, category_id: category3.id)

reservation1 = Reservation.create(user_id: user1.id, start_date: "2017/05/01", end_date: "2017/05/10", location: user1.location, vehicle_id: vehicle1.id)
reservation2 = Reservation.create(user_id: user2.id, start_date: "2017/06/01", end_date: "2017/06/10", location: user2.location, vehicle_id: vehicle2.id)
reservation3 = Reservation.create(user_id: user3.id, start_date: "2017/06/20", end_date: "2017/06/25", location: user3.location, vehicle_id: vehicle3.id)
reservation4 = Reservation.create(user_id: user3.id, start_date: "2017/08/20", end_date: "2017/08/25", location: user3.location, vehicle_id: vehicle3.id)
reservation5 = Reservation.create(user_id: user3.id, start_date: "2017/09/20", end_date: "2017/09/25", location: user3.location, vehicle_id: vehicle3.id)

extra1 = Extra.create(equipment: "Ez Pass", cost: 10.00)
extra2 = Extra.create(equipment: "Trailer", cost: 100.00)
extra3 = Extra.create(equipment: "Road Side Service", cost: 25.00)

reservation_extras1 = ExtrasReservation.create(reservation_id: reservation1.id, extra_id: extra2.id)
reservation_extras2 = ExtrasReservation.create(reservation_id: reservation1.id, extra_id: extra1.id)
reservation_extras3 = ExtrasReservation.create(reservation_id: reservation2.id, extra_id: extra1.id)

# reserved1 = ReservedDate.create(start_date: "2017/05/01", end_date: "2017/05/10", reservation_id: 1, vehicle_id: 1, range_date: ("2017/05/01".to_date.."2017/05/10".to_date).map{ |date| date.strftime("%b %d, %Y") })
# reserved2 = ReservedDate.create(start_date: "2017/06/01", end_date: "2017/06/10", reservation_id: reservation2.id, vehicle_id: vehicle2.id, range_date: ("2017/06/01".to_date.."2017/06/10".to_date).map{ |date| date.strftime("%b %d, %Y") })
# reserved3 = ReservedDate.create(start_date: "2017/05/20", end_date: "2017/05/25", reservation_id: reservation3.id, vehicle_id: vehicle3.id, range_date: ("2017/05/20".to_date.."2017/05/25".to_date).map{ |date| date.strftime("%b %d, %Y") })
