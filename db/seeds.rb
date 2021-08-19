# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clear db'
Flat.destroy_all
puts 'db cleared'

4.times do
  Flat.create(
    name: Faker::Artist.name,
    address: Faker::Address.street_address,
    description: Faker::Hipster.sentence,
    price_per_night: rand(10..500),
    number_of_guests: rand(1..6)
  )
  puts '1 added....'
end

puts 'complete'
