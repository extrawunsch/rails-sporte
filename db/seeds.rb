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

  require "open-uri"

  Booking.destroy_all
  Offer.destroy_all
  User.destroy_all

  puts 'seed begins'
  niklas = User.create(email: 'niklas@gmail.com', password: '123456', name: 'Niklas')
  ramona = User.create(email: 'ramona@gmail.com', password: '123456', name: 'Ramona')
  agnes = User.create(email: 'agnes@gmail.com', password: '123456', name: 'Agnès')
  christoph = User.create(email: 'christoph@gmail.com', password: '123456', name: 'Christoph')

  file = URI.open('https://images.unsplash.com/photo-1498146831523-fbe41acdc5ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80')
  snowboard = Offer.new(title: 'Snowboard', description: 'In perfect condition, used only once', category: ['winter sports'].sample, price: '20', location: 'Neue Jakobstraße 6/7, 10179 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 3)
  snowboard.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  snowboard.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1522898467493-49726bf28798?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
  exercise_ball = Offer.new(title: 'Large exercise ball', description: 'Good condition, already used a few times', category: ['ball sports', 'gym equipment'].sample, price: '5', location: 'Am Kupfergraben 4/4a, 10117 Berlin', pick_up_at: '2020-12-19 09:00:00', host_id: 1)
  exercise_ball.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  exercise_ball.save
  puts 'inside seed'
  
  file = URI.open('https://images.unsplash.com/photo-1597075933405-a06cb4d6cecb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
  kettlebell = Offer.new(title: '12 kettlebell', description: 'Used a lot but still good condition', category: ['gym equipment'].sample, price: '20', location: 'Marheinekepl. 1, 10961 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 3)
  kettlebell.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  kettlebell.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1591037656559-373e224e9c5c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
  rugby_ball = Offer.new(title: 'Rugby ball', description: 'NEW, never used', category: ['ball sports', 'gym equipment'].sample, price: '6', location: 'Schönhauser Allee 185, Berlin', pick_up_at: '2020-12-19 12:00:00', host_id: 2)
  rugby_ball.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  rugby_ball.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1502933691298-84fc14542831?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
  surf_plank = Offer.new(title: 'Surf plank', description: 'New, never used', category: ['winter sports'].sample, price: '12', location: 'Sorauer Str. 6, 10997 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 3)
  surf_plank.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  surf_plank.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1518377551205-b9f072252e33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80')
  snowshoes = Offer.new(title: 'Snowshoes & ski sticks', description: 'Good condition', category: ['winter sports'].sample, price: '30', location: 'Eisenbahnstraße 42/43, 10997 Berlin', pick_up_at: '2020-12-01 17:00:00', host_id: 3)
  snowshoes.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  snowshoes.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1562051544-c8a253660284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1882&q=80')
  windsurf_equipment = Offer.new(title: 'Windsurf equipment', description: 'Barely used, perfect condition', category: ['water sports'].sample, price: '40', location: 'Invalidenstraße 43, 10115 Berlin', pick_up_at: '2020-12-01 21:00:00', host_id: 4)
  windsurf_equipment.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  windsurf_equipment.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1571945192246-4fcee13c27b1?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')
  yoga_mat = Offer.new(title: 'Yoga mat', description: 'Good condition, used 2 times', category: ['gym equipment', 'yoga equipment'].sample, price: '4', location: 'Palisadenstraße 48, 10243 Berlin', pick_up_at: '2020-12-01 21:00:00', host_id: 4)
  yoga_mat.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  yoga_mat.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1565113052052-d0b58f56a9ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
  kayak = Offer.new(title: 'Inflatable kayak', description: 'Good condition', category: ['water sports'].sample, price: '10', location: 'Mittenwalder Str. 30, 10961 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 3)
  kayak.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  kayak.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1509255929945-586a420363cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1802&q=80')
  box_gloves = Offer.new(title: 'Box gloves', description: 'Good condition', category: ['water sports'].sample, price: '10', location: 'Klingelhöferstraße 14, 10785 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 2)
  box_gloves.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  box_gloves.save
  puts 'inside seed'

  file = URI.open('https://images.unsplash.com/photo-1599586120162-c282f39edd1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
  tennis_racket = Offer.new(title: 'Tennis racket', description: 'Good condition', category: ['racket sports'].sample, price: '12', location: 'Niederkirchnerstraße 7, 10963 Berlin', pick_up_at: '2020-12-03 19:00:00', host_id: 1)
  tennis_racket.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  tennis_racket.save
  puts 'inside seed'


 #Offer.create(title: 'Renting out Squash raket', description: 'Lirum Larum Loffelstief', category: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'].sample, price: '5', location: 'Mecklenburger Straße 91, Berlin', pick_up_at: '2020-12-19 09:00:00', host_id: 1, photo:)
 #Offer.create(title: 'Renting out 10kg kettlebell', description: 'Lirum Larum Pumpernickel', category: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'].sample, price: '15', location: 'Mecklenburger Straße 96, Berlin', pick_up_at: '2020-12-19 20:00:00', host_id: 2)
  Booking.create(begin_on: '25.12.2020', end_on: '30.12.2020', user_id: niklas, offer_id: snowboard)
  Booking.create(begin_on: '20.11.2020', end_on: '25.11.2020', user_id: christoph, offer_id: kettlebell)
  Booking.create(begin_on: '22.11.2020', end_on: '23.11.2020', user_id: agnes, offer_id: yoga_mat)
  Booking.create(begin_on: '01.01.2021', end_on: '15.01.2021', user_id: ramona, offer_id: snowshoes)
  Booking.create(begin_on: '01.12.2020', end_on: '15.12.2020', user_id: agnes, offer_id: exercise_ball)
  Booking.create(begin_on: '01.07.2021', end_on: '15.07.2021', user_id: niklas, offer_id: kayak)
  Booking.create(begin_on: '30.07.2021', end_on: '07.08.2021', user_id: christoph, offer_id: surf_plank)
  Booking.create(begin_on: '25.11.2020', end_on: '30.11.2020', user_id: ramona, offer_id: tennis_racket)
  Booking.create(begin_on: '12.12.2020', end_on: '14.12.2020', user_id: niklas, offer_id: box_gloves)
  Booking.create(begin_on: '30.07.2021', end_on: '30.08.2021', user_id: niklas, offer_id: windsurf_equipment)


  puts "User: #{User.count} created, Offer: #{Offer.count} created, Booking: #{Booking.count} created."

  