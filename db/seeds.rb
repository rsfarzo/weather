# Create a main sample user.

# Generate a bunch of additional users.
99.times do |n|
  name  = Faker::Name.name
  email = "user-#{n+1}@seed.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end