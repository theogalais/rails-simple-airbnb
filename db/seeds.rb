# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts 'Creating 5 fake flats...'
4.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.sentence,
    price_per_night: Faker::Number.between(from: 40, to: 200),
    number_of_guests: Faker::Number.between(from: 1, to: 4)
  )
  flat.save!
end
puts 'Finished!'
