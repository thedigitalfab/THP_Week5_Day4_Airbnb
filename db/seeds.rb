# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Clean Database:
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

# Create a list of Cities:
cities = [
    City.create(name: "Paris", zip_code: "75000"),
    City.create(name: "Marseille", zip_code: "13000"),
    City.create(name: "Lyon", zip_code: "69000"),
    City.create(name: "Toulouse", zip_code: "31000"),
    City.create(name: "Nice", zip_code: "06000"),
    City.create(name: "Nantes", zip_code: "44000"),
    City.create(name: "Strasbourg", zip_code: "67000"),
    City.create(name: "Montpellier", zip_code: "34000"),
    City.create(name: "Bordeaux", zip_code: "33000"),
    City.create(name: "Lille", zip_code: "59000"),
    City.create(name: "Rennes", zip_code: "35000"),
    City.create(name: "Reims", zip_code: "51100"),
    City.create(name: "Le Havre", zip_code: "76600"),
    City.create(name: "Saint-Etienne", zip_code: "42100"),
    City.create(name: "Toulon", zip_code: "83100"),
    City.create(name: "Grenoble", zip_code: "38000"),
    City.create(name: "Dijon", zip_code: "21000"),
    City.create(name: "Nîmes", zip_code: "30000"),
    City.create(name: "Angers", zip_code: "49000"),
    City.create(name: "Le Mans", zip_code: "72000"),
    City.create(name: "Brest", zip_code: "29000"),
    City.create(name: "Tours", zip_code: "37000"),
    City.create(name: "Limoges", zip_code: "87000"),
    City.create(name: "Perpignan", zip_code: "66000"),
    City.create(name: "Metz", zip_code: "57000")
]

# Create Dogsitters, with their cities
dogsitters = []
125.times do
    doctor = Dogsitter.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city_id: cities[rand(0..24)].id
    )
    dogsitters << dogsitter
end

# Create Dogs, with their cities
dogs = []
300.times do
    patient = Dog.create(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed,
        city_id: cities[rand(0..24)].id
    )
    dogs << dog
end

# Randomly create strolls:
500.times do
    Stroll.create(
        date: Faker::Date.forward(days: 90),
        dogsitter_id: dogsitters[rand(0..24)].id,
        dog_id: dogs[rand(0..199)].id
    )
end