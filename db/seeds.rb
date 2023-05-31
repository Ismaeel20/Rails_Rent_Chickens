# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaing database"
# destroy database

puts "creating users"
edward = User.create(email: "chicken@lewagon.com", password: "123456")
User.create(email: 'user1@example.com', password: 'password1')
User.create(email: 'user2@example.com', password: 'password2')
User.create(email: 'user3@example.com', password: 'password3')


chicken_1 = Chicken.new(breed: "Wild chicken", description: "A wild angry chicken", price: "20")
chicken_1.user = edward
chicken_1.save!

Chicken.create(breed: 'Rhode Island Red', description: 'Friendly and excellent layers.', price: 10.99, user_id: 1)
Chicken.create(breed: 'Ameraucana', description: 'Known for their blue eggs.', price: 12.99, user_id: 1)
Chicken.create(breed: 'Barred Plymouth Rock', description: 'Docile and good for families.', price: 9.99, user_id: 2)
Chicken.create(breed: 'Silkie', description: 'Fluffy and adorable.', price: 11.99, user_id: 2)
Chicken.create(breed: 'Buff Orpington', description: 'Gentle and good with children.', price: 13.99, user_id: 3)


# Booking.create(user_id: 1, chicken_id: 1, start_date: Date.today, end_date: Date.today + 7)
# Booking.create(user_id: 2, chicken_id: 2, start_date: Date.today + 3, end_date: Date.today + 10)
# Booking.create(user_id: 3, chicken_id: 3, start_date: Date.today + 2, end_date: Date.today + 9)
# Booking.create(user_id: 1, chicken_id: 4, start_date: Date.today + 5, end_date: Date.today + 12)

  p "There are #{Chicken.count} chickens"
