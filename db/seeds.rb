# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create users
test_user = User.create(first_name: 'testing', last_name: 'tester', email: 'test@test.com', password: 'password')
danny = User.create(first_name: 'danny', last_name: 'pham', email: 'dannynpham@csu.fullerton.edu', password: 'password')

# Create sections
accessory = Section.create(name: "Accessory")
top = Section.create(name: "Top")
bottom = Section.create(name: "Bottom")
feet = Section.create(name: "Feet")

# Create items
hat = Item.create(user: test_user, section: accessory, image: File.open('/images/item-hat.jpg'))
shirt = Item.create(user: test_user, section: top, image: File.open('/images/item-shirt.jpg'))
shorts = Item.create(user: test_user, section: bottom, image: File.open('/images/item-shorts.jpg'))
shoes = Item.create(user: test_user, section: feet, image: File.open('/images/item-shoes.jpg'))
watch = Item.create(user: test_user, section: accessory, image: File.open('/images/item-watch.jpg'))
dress = Item.create(user: test_user, section: top, image: File.open('/images/item-dress.jpg'))
leggings = Item.create(user: test_user, section: bottom, image: File.open('/images/item-leggings.jpg'))
heels = Item.create(user: test_user, section: feet, image: File.open('/images/item-shoes.jpg'))
