# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Videogame.destroy_all
User.destroy_all


puts 'Creating 20 fake User and 20 fake videogames...'

y = 50
20.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  user = User.new(email: "#{first}@#{last}.com", password: Faker::Internet.password, first_name: first, last_name: last, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, avatar: "https://www.discordavatars.com/wp-content/uploads/2020/05/meme-avatar-0#{y}.jpg")
  user.save!
  y += 1
end

games = [
  {
    name:       'The Legend of Zelda : Ocarina of Time',
    genre:      'Action-Aventure',
    price:      '7€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590062933/retro%20game%20show/ocarina.jpg',
  },
  {
    name:       'Super Mario Bros.',
    genre:      'Plateforme',
    price:      '3€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590071287/retro%20game%20show/mariobros_po5qu2.jpg'
  },
  {
    name:       'Pokémon Rouge',
    genre:      'Jeu de rôle',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590070099/retro%20game%20show/pkmrouge_kkmswj.jpg'
  },
  {
    name:       'Tomb Raider',
    genre:      'Plateforme',
    price:      '4€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590073773/retro%20game%20show/tombraider_i9uykz.jpg'
  },
  {
    name:       'Mario Kart 64',
    genre:      'Course',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590070298/retro%20game%20show/mariokart64_n3czeu.jpg'
  },
  {
    name:       'Tekken 3',
    genre:      'Combat',
    price:      '6€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590072484/retro%20game%20show/taken3_jpelza.jpg'
  },
  {
    name:       'Age of Empires',
    genre:      'Stratégie temps réel',
    price:      '2€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590072743/retro%20game%20show/AgeofEmpires_ov5cb5.png'
  },
  {
    name:       'Gran Turismo',
    genre:      'Course',
    price:      '3€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590073431/retro%20game%20show/Gran_Turismo_bi5433.png'
  },
  {
    name:       'Sonic the Hedgehog',
    genre:      'Plateforme',
    price:      '4€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590070688/retro%20game%20show/sonic2_zyeylx.jpg'
  },
  {
    name:       'Donkey Kong Country',
    genre:      'Plateforme',
    price:      '3€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590070718/retro%20game%20show/donkeykongcountry_s88nys.jpg'
  },
  {
    name:       'Final Fantasy VI',
    genre:      'Jeu de rôle',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590071154/retro%20game%20show/ff7_zkh7uj.jpg'
  },
  {
    name:       'Tetris',
    genre:      'Réflexion',
    price:      '1€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590072265/retro%20game%20show/tetris.jpg_xpod5e.jpg'
  },
  {
    name:       'Super Street Fighter II',
    genre:      'Combat',
    price:      '6€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590072133/retro%20game%20show/sf2_wr1aaq.jpg'
  },
  {
    name:       'Super Mario Land .',
    genre:      'Plateforme',
    price:      '2€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590062752/retro%20game%20show/super-mario-land-3402-diaporama_zgn2e5.jpg'
  },
  {
    name:       'Super Smash Bros',
    genre:      'Combat',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590071006/retro%20game%20show/ssb_vo6y1y.jpg'
  },
  {
    name:       'Pac-Man',
    genre:      'Arcade et labyrinthe',
    price:      '1€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590071588/retro%20game%20show/pacman_i2ydgp.jpg'
  },
  {
    name:       'Grand Theft Auto',
    genre:      'Action',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590071614/retro%20game%20show/gta_keruus.jpg'
  },
  {
    name:       'F-Zero',
    genre:      'Course',
    price:      '5€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590070917/retro%20game%20show/fzero_ioyuvh.jpg'
  },
  {
    name:       'Golden Sun',
    genre:      'Jeu de rôle',
    price:      '6€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590062748/retro%20game%20show/game-boy-advance-golden-sun_bepwmj.jpg'
  },
  {
    name:       'Fire emblem : Rekka no ken',
    genre:      'Jeu de rôle',
    price:      '3€',
    photo:      'https://res.cloudinary.com/dubgqyx31/image/upload/v1590063020/retro%20game%20show/781_q3koko.jpg'
  }
]

user = User.create(email:"gamer@gmail.com", password:"A12345", first_name: "yoshi", last_name:"nintendo", address:"nintendoland", phone_number:"01234567", avatar:"http://www.pngall.com/wp-content/uploads/2/Video-Game-PNG-Pic.png")
user.save!
user2 = User.create(email:"gamers@gmail.com", password:"A12345", first_name: "yoshi", last_name:"nintendo", address:"nintendoland", phone_number:"01234567", avatar:"http://www.pngall.com/wp-content/uploads/2/Video-Game-PNG-Pic.png")
user2.save!
puts user
games.each do |game|

  newgame = Videogame.new(game)
  newgame.user = user
  newgame.save!
end


puts 'Finished!'
