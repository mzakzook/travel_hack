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

50.times do 
  Destination.create({
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country
  })
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