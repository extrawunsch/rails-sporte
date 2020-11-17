# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  # Booking.destroy_all
  # Offer.destroy_all
  # User.destroy_all

  puts 'seed begins'
  User.create(email: 'niklas@gmail.com', password: '123456', name: 'Niklas')
  User.create(email: 'ramona@gmail.com', password: '123456', name: 'Ramona')

  puts 'inside seed'
  Offer.create(title: 'Renting out Squash raket', description: 'Lirum Larum Loffelstief', category: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'].sample, price: '5', location: 'Mecklenburger Straße 91, Berlin', pick_up_at: '2020-12-19 09:00:00', host_id: 1)
  Offer.create(title: 'Renting out 10kg kettlebell', description: 'Lirum Larum Pumpernickel', category: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'].sample, price: '15', location: 'Mecklenburger Straße 96, Berlin', pick_up_at: '2020-12-19 20:00:00', host_id: 2)
  Booking.create(begin_on: '17.11.2020', end_on: '20.11.2020', user_id: 2, offer_id: 1)
  Booking.create(begin_on: '20.11.2020', end_on: '25.11.2020', user_id: 1, offer_id: 2)

  puts "User: #{User.count} created, Offer: #{Offer.count} created, Booking: #{Booking.count} created."
