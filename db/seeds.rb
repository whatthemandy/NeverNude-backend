# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create users
User.create(first_name: 'testing', last_name: 'tester', email: 'test@test.com', password: 'password')
User.create(first_name: 'danny', last_name: 'pham', email: 'dannynpham@csu.fullerton.edu', password: 'password')

# Create sections
accessory = Section.create(name: "Accessory")
top = Section.create(name: "Top")
bottom = Section.create(name: "Bottom")
feet = Section.create(name: "Feet")
