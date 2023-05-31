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

file = URI.open("https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2022/10/Roast-Chicken-5.jpg")

chicken_1 = Chicken.new(breed: "Wild chicken", description: "A wild angry chicken", price: "20")
chicken_1.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")
chicken_1.user = edward
chicken_1.save!

 chicken_2 = Chicken.new(breed: 'Rhode Island Red', description: 'Friendly and excellent layers.', price: 10.99)
 chicken_2.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")

 chicken_2.user = user1
 chicken_2.save!
chicken_3 = Chicken.new(breed: 'Ameraucana', description: 'Known for their blue eggs.', price: 12.99)
chicken_3.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")
chicken_3.user = user1
chicken_3.save!
chicken_4 = Chicken.new(breed: 'Barred Plymouth Rock', description: 'Docile and good for families.', price: 9.99)
chicken_4.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")
chicken_4.user = user2
chicken_4.save!
chicken_5 = Chicken.new(breed: 'Silkie', description: 'Fluffy and adorable.', price: 11.99)
chicken_5.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")
chicken_5.user = user2
chicken_5.save!
chicken_6 = Chicken.new(breed: 'Buff Orpington', description: 'Gentle and good with children.', price: 13.99)
chicken_6.photo.attach(io: file, filename: "/Silky_bantam.jpg", content_type: "image/jpg")
chicken_6.user = user3
chicken_6.save!


Booking.create(user_id: 1, chicken_id: 1, start_date: Date.today, end_date: Date.today + 7)
Booking.create(user_id: 2, chicken_id: 2, start_date: Date.today + 3, end_date: Date.today + 10)
Booking.create(user_id: 3, chicken_id: 3, start_date: Date.today + 2, end_date: Date.today + 9)
Booking.create(user_id: 1, chicken_id: 4, start_date: Date.today + 5, end_date: Date.today + 12)

  p "There are #{Chicken.count} chickens"
