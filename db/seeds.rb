# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

500.times do 
  User.create({
    name: Faker::Name.name, 
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 100),
    email: Faker::Internet.email,
    location: Faker::Address.city,
    bio: Faker::Hipster.paragraphs(number: 2).join(' '),
    username: Faker::Internet.password,
    password: Faker::Internet.password
  })
end

destinations = [{city: "New York", state: "NY", country: "USA"}, {city: "San Francisco", state: "CA", country: "USA"}, {city: "Los Angeles", state: "CA", country: "USA"}, {city: "Paris", country: "France"}, {city: "London", country: "UK"}, {city: "Tokyo", country: "Japan"}, {city: "Sydney", country: "Australia"}, {city: "Aukland", country: "New Zealand"}, {city: "Oakland", state: "CA", country: "USA"}, {city: "Cairo", country: "Egypt"}, {city: "Hong Kong"}, {city: "Singapore"}, {city: "Florence", country: "Italy"}, {city: "Berlin", country: "Germany"}, {city: "Vancouver", state: "BC", country: "Canada"}, {city: "Mexico City", country: "Mexico"}, {city: "Buenos Aires", country: "Argentina"}, {city: "Madrid", country: "Spain"}, {city: "Seoul", country: "South Korea"}]


destinations.length.times do |i| 
  Destination.create(destinations[i])
end

categories = ["Transportation", "Dining", "Nightlife", "Cultural", "Adventure", "Rewards/Points"]

2500.times do 
  Hack.create({
    category: categories.sample,
    title: Faker::Hipster.sentence(word_count: 4),
    content: Faker::Hipster.paragraphs(number: 1),
    user: User.all.sample,
    destination: Destination.all.sample
  })
end

250.times do 
  Comment.create({
    content: Faker::Hipster.paragraphs(number: 1),
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

5000.times do
  Like.create({
    user: User.all.sample,
    hack: Hack.all.sample
  })
end

250.times do
  Follow.create({
    follower_id: User.all.sample.id,
    followed_id: User.all.sample.id
  })
end