# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Richmond, VA")
user2 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Prince George, VA")
user3 = User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, location: "Jersey City, NJ")

reservation1 = Reservation.create(user_id: user1.id)
reservation2 = Reservation.create(user_id: user2.id)
reservation3 = Reservation.create(user_id: user3.id)

category1 = Category.create(vehicle_type: "SUV")
category2 = Category.create(vehicle_type: "Truck")
category3 = Category.create(vehicle_type: "Coupe")
category4 = Category.create(vehicle_type: "Sedan")

vehicle1 = Vehicle.create(year: "2011", make: "Honda", model: "Civic", color: "Black", serial_number: 123918, current_location: "Richmond, Va", category_id: 3)
vehicle2 = Vehicle.create(year: "2012", make: "Honda", model: "Civic", color: "Black", serial_number: 123911, current_location: "Richmond, Va", category_id: category3.id)
vehicle3 = Vehicle.create(year: "2013", make: "Honda", model: "Civic", color: "Black", serial_number: 123912, current_location: "Richmond, Va", category_id: category3.id)

reserved1 = ReservedDate.create(start_date: "2017/05/01", end_date: "2017/05/10", reservation_id: 1, vehicle_id: 1)
reserved2 = ReservedDate.create(start_date: "2017/06/01", end_date: "2017/06/10", reservation_id: reservation2.id, vehicle_id: vehicle2.id)
reserved3 = ReservedDate.create(start_date: "2017/05/20", end_date: "2017/05/25", reservation_id: reservation3.id, vehicle_id: vehicle3.id)
