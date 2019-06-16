# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts 'Cleaning database...'
Casino.destroy_all
User.destroy_all


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


puts 'Creating Users...'
5.times do
  new_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    password: "123456",
    avatar: ""
    )
  new_user.save
  puts "#{new_user} - #{new_user.first_name} #{new_user.last_name} has been created as a #{new_user.valid?} user."
end
