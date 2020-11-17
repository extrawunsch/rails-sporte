# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  puts 'seed begin'
  User.create(email: 'niklas@gmail.com', password: '123456', name: 'Niklas')
  puts 'inside seed'
  Offer.create(title: 'Renting out Squash raket', description: 'Lirum Larum Loffelstief', category: 'Racket sports', price: '5', location: 'Mecklenburger Straße 91, Berlin', pick_up_at: '2020-12-19 09:00:00', host_id: 1)
  Booking.create(begin_on: '17.11.2020', end_on: '20.11.2020', user_id: 1, offer_id: 1)
  puts 'seed ended'
