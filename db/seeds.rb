# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Section.delete_all
Outfit.delete_all
OutfitsItem.delete_all

# Create users
test_user = User.create(first_name: 'testing', last_name: 'tester', email: 'test@test.com', password: 'password')

# Create sections
accessory = Section.create(name: "Accessory")
top = Section.create(name: "Top")
bottom = Section.create(name: "Bottom")
footwear = Section.create(name: "Footwear")

# Create items
hat = Item.create(user: test_user, section: accessory, image: open('http://i.imgur.com/l4xkojL.jpg'))
shirt = Item.create(user: test_user, section: top, image: open('http://i.imgur.com/g5uUVcf.jpg'))
shorts = Item.create(user: test_user, section: bottom, image: open('http://i.imgur.com/DLOk5Ox.jpg'))
shoes = Item.create(user: test_user, section: footwear, image: open('http://i.imgur.com/QdDnukb.jpg'))
watch = Item.create(user: test_user, section: accessory, image: open('http://i.imgur.com/F5JJz4A.jpg'))
dress = Item.create(user: test_user, section: top, image: open('http://i.imgur.com/phSBuTI.jpg'))
leggings = Item.create(user: test_user, section: bottom, image: open('http://i.imgur.com/kbIaSZe.jpg'))
heels = Item.create(user: test_user, section: footwear, image: open('http://i.imgur.com/n1QSuJI.jpg'))

# Create outfits
outfit_one = Outfit.create(user: test_user)
outfit_two = Outfit.create(user: test_user)

# Add items to outfits
OutfitsItem.create(outfit: outfit_one, item: hat)
OutfitsItem.create(outfit: outfit_one, item: shirt)
OutfitsItem.create(outfit: outfit_one, item: shorts)
OutfitsItem.create(outfit: outfit_one, item: shoes)

OutfitsItem.create(outfit: outfit_two, item: watch)
OutfitsItem.create(outfit: outfit_two, item: dress)
OutfitsItem.create(outfit: outfit_two, item: leggings)
OutfitsItem.create(outfit: outfit_two, item: heels)
