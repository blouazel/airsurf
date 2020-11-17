# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Board.destroy_all
Rental.destroy_all
User.destroy_all

user1 = User.new(
  email:    "bill@example.com",
  password: "password",
  name: "bill"
  )
user1.photo.attach(io: File.open(Rails.root.join('db/fixtures/users/headshot_1.jpg')), filename: 'avatar_1.jpg')
user1.save!

user2 = User.new(
  email:    "michel@example.com",
  password: "password",
  name: "mike"
  )
user2.photo.attach(io: File.open(Rails.root.join('db/fixtures/users/headshot_2.jpg')), filename: 'avatar_1.jpg')
user2.save!

board1 = Board.new(
  location: "Rennes",
  height: 1.2,
  volume: 33,
  brand: "Lost",
  condition: "good",
  price_per_day: 15
  )
board1.photo.attach(io: File.open(Rails.root.join('db/fixtures/boards/surfboard_1.jpg')), filename: 'avatar_1.jpg')
board1.user = user1
board1.save!

board2 = Board.new(
    location: "St-Brieuc",
    height: 1.85,
    volume: 35.5,
    brand: "Firewire",
    condition: "Almost new",
    price_per_day: 25
  )
board2.photo.attach(io: File.open(Rails.root.join('db/fixtures/boards/surfboard_2.jpg')), filename: 'avatar_1.jpg')
board2.user = user2
board2.save!



# rental1 = Rental.new (
#   total_price: 50,
#   start_date: Date.now,
#   end_date: (Date.now + 1)
# )
# rental1.user_id = user1
# rental1.board_id = board2

# rental1.save