# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do 
	Restaurant.create(name: Faker::Company.name, 
										description: Faker::Lorem.paragraph(1), 
										city: Faker::Address.city,
										state: "NY",
										address: Faker::Address.street_address,
										zipcode: Faker::Address.zip_code,
										phone_number: Faker::PhoneNumber.phone_number
										)
end