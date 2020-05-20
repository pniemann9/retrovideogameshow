# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 20 fake User and 20 fake videogames...'

y = 50
20.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  user = User.new(email: "#{first}@#{last}.com", password: Faker::Internet.password, first_name: first, last_name: last, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, avatar: "https://www.discordavatars.com/wp-content/uploads/2020/05/meme-avatar-0#{y}.jpg")
  user.save!
  y += 1
end

i = 1

while i <= 20
  videogame = Videogame.new(name: Faker::Game.title, description: "#{Faker::Game.genre} #{Faker::Game.platform}", price: rand(5..50), user_id: i)
  videogame.save!
  i += 1
end

 User.create(email:"gamer@gmail.com", password:"A12345", first_name: "yoshi", last_name:"nintendo", address:"nintendoland", phone_number:"01234567", avatar:"http://www.pngall.com/wp-content/uploads/2/Video-Game-PNG-Pic.png")

puts 'Finished!'

