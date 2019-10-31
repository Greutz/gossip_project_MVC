# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
city = []
gossip = []

10.times do
  City.create(name: Faker::Address.city)
end
puts "10 users créés !"

10.times do
  User.create(city: City.find(rand(1..10)), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph(sentence_count: 5), email: Faker::Internet.email, age: Faker::Number.between(from: 10, to: 60))
end
puts "10 villes crées !"


10.times do
  PrivateMessage.create(sender: User.find(rand(1..10)), recipient: User.find(rand(1..10)), content: Faker::Lorem.paragraph(sentence_count: 3))
end
puts "10 PM créés !"

10.times do
  Gossip.create(user: User.find(rand(1..10)), title: Faker::Game.title, content: Faker::Lorem.paragraph(sentence_count: 2))
end
puts "10 gossips créés !"

10.times do
  Comment.create(user: User.all.sample, gossip: Gossip.find(rand(1..10)), content: Faker::Lorem.paragraph(sentence_count: 1))
end
puts "10 comments créés !"

10.times do
  Tag.create(title: Faker::Beer.brand)
end
puts "10 tags créés !"
