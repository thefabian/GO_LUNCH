# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_1 = User.create!(email: "test1@test.com", password: "secret")
user_2 = User.create!(email: "test2@test.com", password: "secret")

Lunch.create(user_1: user_1, user_2: user_2, location: "Berlin", date: Time.zone.now)
