Fabricator(:owner) do 
  email { Faker::Internet.email }
  password 'password'
  name { Faker::Name.name }
end