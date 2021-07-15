# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating flats..."


3.times do
  flat = Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentences,
    price_per_night: rand(1..75),
    number_of_guests: rand(1..10)
  )
end
