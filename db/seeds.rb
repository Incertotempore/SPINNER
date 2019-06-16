# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake casinos...'
10.times do
  casino = Casino.new(
    name:    Faker::Company.name,
    affiliate_link: "Slot Hero",
    affiliate_program: "Get rich quick",
    logo: "",
    bonus_code: Faker::Number.number(10),
    bonus_percentage: rand(5..30).to_s
    # bonus_amount: rand(50..200)

  )
  casino.save!
end
puts 'Finished!'
