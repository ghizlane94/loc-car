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
  user_id: user1.id,
  mileage: 10000,
  price: 300,
  description: "BMW, in full Bayerische Motoren Werke AG, German automaker noted for quality sports sedans and motorcycles and one of the most prominent brands in the world",
  url_image: "https://www.cnet.com/a/img/resize/ddb20b964545336d2324614f2fc1453ba85565ac/hub/2022/01/20/49b42973-a81d-4b01-8d59-c209eb739df6/dsc01540.jpg?auto=webp&width=1200"
)
car2 = Car.create!(
  brand: "Audi",
  color: "blue",
  user_id: user2.id,
  mileage: 20000,
  price: 400,
  description: "The AUDI AG stands for sporty vehicles, high build quality and progressive design – for “Vorsprung durch Technik.” The Audi Group is among the world's leading producers of premium cars",
  url_image: "https://i.ytimg.com/vi/1EOagL1O2v4/maxresdefault.jpg"
)
car3 = Car.create!(
  brand: "Mercedes",
  color: "green",
  user_id: user3.id,
  mileage: 30000,
  price: 500,
  description: "Mercedes have been pioneers of safety since the early days of the automobile. All recent Mercedes cars come equipped with a host of radars",
  url_image: "https://i.gaw.to/content/photos/25/38/253854_2017_Mercedes-Benz_AMG_GT.jpg"
)
car4 = Car.create!(
  brand: "Honda",
  color: "yellow",
  user_id: user4.id,
  mileage: 40000,
  price: 600,
  description: "Honda is a Japanese publicmultinational conglomerate corporation primarily known as a manufacturer of automobiles, aircraft, motorcycles, and power equipment.",
  url_image: "https://cdn.motor1.com/images/mgl/B7eBA/s1/2021-honda-civic-type-r-limited-edition-exterior-front-quarter.jpg"
)
car5 = Car.create!(
  brand: "Toyota",
  color: "black",
  user_id: user5.id,
  mileage: 50000,
  price: 700,
  description: "Toyota is an automobile manufacturer. The company designs, manufactures and sells passenger cars, buses, minivans, trucks, specialty cars, recreational and sport-utility vehicles.",
  url_image: "https://imgd.aeplcdn.com/0x0/n/sw356ra_1421818.jpg"
)
