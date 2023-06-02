# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "cleaing database"
Chicken.destroy_all
User.destroy_all

puts "creating users"
edward = User.create!(email: "chicken@lewagon.com", password: "123456")
user1 = User.create!(email: 'user1@example.com', password: 'password1')
user2 = User.create!(email: 'user2@example.com', password: 'password2')
user3 = User.create!(email: 'user3@example.com', password: 'password3')

# https://res.cloudinary.com/djvgmrujn/image/upload/v1685541928/ui2yjglh7j2ebeqvmgie.jpg

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Amberbock.jpg/256px-Amberbock.jpg")

chicken_1 = Chicken.new(breed: "Wild chicken", description: "A wild angry chicken", price: 20, user_id: edward.id)
chicken_1.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
chicken_1.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/d0/Blue_Ameraucana_Cock.jpg")

 chicken_2 = Chicken.new(breed: 'Rhode Island Red', description: 'Friendly and excellent layers.', price: 10.99, user_id: user1.id)
 chicken_2.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")

 chicken_2.save!

 file2 = URI.open("https://media.springernature.com/full/springer-static/image/art%3A10.1038%2F529270a/MediaObjects/41586_2016_Article_BF529270a_Figa_HTML.jpg")

chicken_3 = Chicken.new(breed: 'Ameraucana', description: 'Known for their blue eggs.', price: 12.99, user_id: user1.id)
chicken_3.photo.attach(io: file2, filename: "nes.png", content_type: "image/jpg")

chicken_3.save!

file3 = URI.open("https://homesteadsweethome.com/wp-content/uploads/2022/01/barred-rock-chicken-.jpg")

chicken_4 = Chicken.new(breed: 'Barred Plymouth Rock', description: 'Docile and good for families.', price: 9.99, user_id: user1.id)
chicken_4.photo.attach(io: file3, filename: "nes.png", content_type: "image/jpg")

chicken_4.save!

file4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/e/e2/Silky_bantam.jpg")

chicken_5 = Chicken.new(breed: 'Silkie', description: 'Fluffy and adorable.', price: 11.99, user_id: user1.id)
chicken_5.photo.attach(io: file4, filename: "nes.png", content_type: "image/jpg")

chicken_5.save!
file5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Orpington_chicken_2.jpg/640px-Orpington_chicken_2.jpg")

chicken_6 = Chicken.new(breed: 'Buff Orpington', description: 'Gentle and good with children.', price: 13.99, user_id: user1.id)
chicken_6.photo.attach(io: file5, filename: "nes.png", content_type: "image/jpg")

chicken_6.save!

file6 = URI.open("https://i.pinimg.com/originals/53/83/11/53831134f521222ae27454dca888e21e.png")
chicken_7 = Chicken.new(breed: 'Roast Chicken', description: 'Does not lay eggs but needs a good home.', price: 11.99, user_id: user1.id)
chicken_7.photo.attach(io: file6, filename: "nes.png", content_type: "image/jpg")

chicken_7.save!

# Booking.create(user_id: 1, chicken_id: 1, start_date: Date.today, end_date: Date.today + 7)
# Booking.create(user_id: 2, chicken_id: 2, start_date: Date.today + 3, end_date: Date.today + 10)
# Booking.create(user_id: 3, chicken_id: 3, start_date: Date.today + 2, end_date: Date.today + 9)
# Booking.create(user_id: 1, chicken_id: 4, start_date: Date.today + 5, end_date: Date.today + 12)

# Booking.create(user_id: User.all.sample.id, chicken_id: Chicken.all.sample.id, start_date: Date.today, end_date: Date.today + 7)
# Booking.create(user_id: User.all.sample.id, chicken_id: Chicken.all.sample.id, start_date: Date.today + 3, end_date: Date.today + 10)
# Booking.create(user_id: User.all.sample.id, chicken_id: Chicken.all.sample.id, start_date: Date.today + 2, end_date: Date.today + 9)
# Booking.create(user_id: User.all.sample.id, chicken_id: Chicken.all.sample.id, start_date: Date.today + 5, end_date: Date.today + 12)
# Booking.all.save
  p "There are #{Chicken.count} chickens"
