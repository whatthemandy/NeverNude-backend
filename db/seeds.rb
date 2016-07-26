# Create user
pocket_gopher = User.create(first_name: 'pocket', last_name: 'gopher', email: 'pocketgopher@dbc.com', password: 'password')

# Create sections
accessory = Section.create(name: "Accessory")
top = Section.create(name: "Top")
bottom = Section.create(name: "Bottom")
footwear = Section.create(name: "Footwear")

# Create items
a = Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/Sc5Emjg.jpg'))
e = Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/XbZLZ3Q.jpg'))
i = Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/TzpzUeT.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/OVGVHGG.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/tm00eQu.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/yBhAfK7.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/Dza6E40.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/7y488Y6.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/okCyybc.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/DQIxJ9m.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/zwKHtf1.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/sa3Z4Gj.jpg'))
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/3H48uyC.jpg'))

b = Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/vNr8nYQ.jpg'))
f = Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/J7iRKLy.jpg'))
j = Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/6czOgTo.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/PPzKR9w.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/kwTYoqt.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/eNGWJVR.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/xpJmh1y.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/dQvKetx.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/hmHrTy7.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/gRbDoPn.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/wYxC6F0.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/YC7vltk.jpg'))
Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/OcThnj7.jpg'))

c = Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/r8Stusr.jpg'))
g = Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/SXn0pnV.jpg'))
k = Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/VwBL9J5.jpg'))
Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/YkavJh3.jpg?1'))
Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/AoV2tv0.jpg'))
Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/KIqLrK9.jpg'))
Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/21mR9Xy.jpg'))

d = Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/fwKDKbN.jpg'))
h = Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/OdgXVoj.jpg'))
l = Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/5ZXXIyh.jpg'))
Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/1mJSbi6.jpg'))
Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/Nut5tUl.jpg'))
Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/pFfpoSB.jpg'))
Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/uVQqLOV.jpg'))
Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/doYera3.jpg?1'))

# Create outfits
outfit_one = Outfit.create(user: pocket_gopher)
outfit_two = Outfit.create(user: pocket_gopher)
outfit_three = Outfit.create(user: pocket_gopher)

# Add items to outfits
OutfitsItem.create(outfit: outfit_one, item: a)
OutfitsItem.create(outfit: outfit_one, item: b)
OutfitsItem.create(outfit: outfit_one, item: c)
OutfitsItem.create(outfit: outfit_one, item: d)

OutfitsItem.create(outfit: outfit_two, item: e)
OutfitsItem.create(outfit: outfit_two, item: f)
OutfitsItem.create(outfit: outfit_two, item: g)
OutfitsItem.create(outfit: outfit_two, item: h)

OutfitsItem.create(outfit: outfit_three, item: i)
OutfitsItem.create(outfit: outfit_three, item: j)
OutfitsItem.create(outfit: outfit_three, item: k)
OutfitsItem.create(outfit: outfit_three, item: l)

# Create tags
fancy = Tag.create(user: pocket_gopher, name: "Fancy")
comfy = Tag.create(user: pocket_gopher, name: "Comfy")
work = Tag.create(user: pocket_gopher, name: "Work")
summer = Tag.create(user: pocket_gopher, name: "Summer")
school = Tag.create(user: pocket_gopher, name: "School")

# Add tags to items
TagsItem.create(tag: fancy, item: i)
TagsItem.create(tag: fancy, item: j)
TagsItem.create(tag: fancy, item: l)

TagsItem.create(tag: comfy, item: a)
TagsItem.create(tag: comfy, item: b)
TagsItem.create(tag: comfy, item: c)
TagsItem.create(tag: comfy, item: k)
TagsItem.create(tag: comfy, item: e)
TagsItem.create(tag: comfy, item: h)

TagsItem.create(tag: work, item: d)
TagsItem.create(tag: work, item: f)
TagsItem.create(tag: work, item: g)

# Blank items in case user doesn't want certain section:
Item.create(user: pocket_gopher, section: accessory, image: open('http://i.imgur.com/NV6NM4i.jpg'))
# Item.create(user: pocket_gopher, section: top, image: open('http://i.imgur.com/NV6NM4i.jpg'))
# Item.create(user: pocket_gopher, section: bottom, image: open('http://i.imgur.com/NV6NM4i.jpg'))
# Item.create(user: pocket_gopher, section: footwear, image: open('http://i.imgur.com/NV6NM4i.jpg'))
