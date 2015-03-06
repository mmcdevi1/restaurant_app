Fabricator(:restaurant) do 
	name { Faker::Company.name }
	description { Faker::Lorem.sentence(4) }
	city { Faker::Address.city }
  state { Faker::Address.state_abbr }
  address { Faker::Address.street_address }
  zipcode { Faker::Address.zip_code }
  phone_number { Faker::PhoneNumber.phone_number }
end