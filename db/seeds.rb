# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying  "
Car.destroy_all
puts "destroting users"
User.destroy_all

puts "Creating users"

user1 = User.create!(
  first_name: "Afafe ",
  last_name: "Akin",
  email: "afafe@test.com",
  password: 123456
)

user2 = User.create!(
  first_name: "Ghizlane",
  last_name: "Ait dada",
  email: "ghizlane@test.com",
  password: 123456
)

user3 = User.create!(
  first_name: "Sanaa",
  last_name: "slimani",
  email: "sanaa@test.com",
  password: 123456
)

user4 = User.create!(
  first_name: "Malik",
  last_name: "salim",
  email: "malik@test.com",
  password: 123456
)

user5 = User.create!(
  first_name: "Aklim ",
  last_name: "ahmadi",
  email: "aklim@test.com",
  password: 123456
)
puts "Creating cars"

car1 = Car.create!(
  brand: "BMW",
  color: "red",
  user: user1,
  mileage: 10000,
  price: 300,
  description: "this is a BMW car",
  url_image: "https://www.cnet.com/a/img/resize/ddb20b964545336d2324614f2fc1453ba85565ac/hub/2022/01/20/49b42973-a81d-4b01-8d59-c209eb739df6/dsc01540.jpg?auto=webp&width=1200"
)
car2 = Car.create!(
  brand: "Audi",
  color: "blue",
  user: user2,
  mileage: 20000,
  price: 400,
  description: "this is a Audi car",
  url_image: "https://i.ytimg.com/vi/1EOagL1O2v4/maxresdefault.jpg"
)
car3 = Car.create!(
  brand: "Mercedes",
  color: "green",
  user: user3,
  mileage: 30000,
  price: 500,
  description: "this is a Mercedes car",
  url_image: "https://i.gaw.to/content/photos/25/38/253854_2017_Mercedes-Benz_AMG_GT.jpg"
)
car4 = Car.create!(
  brand: "Honda",
  color: "yellow",
  user: user4,
  mileage: 40000,
  price: 600,
  description: "this is a Honda car",
  url_image: "https://cdn.motor1.com/images/mgl/B7eBA/s1/2021-honda-civic-type-r-limited-edition-exterior-front-quarter.jpg"
)
car5 = Car.create!(
  brand: "Toyota",
  color: "black",
  user: user5,
  mileage: 50000,
  price: 700,
  description: "this is a Toyota car",
  url_image: "https://imgd.aeplcdn.com/0x0/n/sw356ra_1421818.jpg"
)
