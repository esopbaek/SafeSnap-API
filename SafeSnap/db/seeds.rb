# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copen\hagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

physician = Physician.create(first_name: "Esop", last_name: "Baek", profile_photo_url: "http://localhost:3000/assets/profile_photos/adam.jpg")

physician.patients.create({first_name: "Ben", last_name: "Sparrow", profile_photo_url: "http://localhost:3000/assets/profile_photos/ben.png"})
physician.patients.create({first_name: "Max", last_name: "Brenner", profile_photo_url: "http://localhost:3000/assets/profile_photos/max.png"})
physician.patients.create({first_name: "Mike", last_name: "Wallace", profile_photo_url: "http://localhost:3000/assets/profile_photos/mike.png"})

ben = physician.patients.first

bens_foot_set = ben.image_sets.create({name: "Foot", description: "Foot Photos"})
bens_foot_set.images.create({url: "http://localhost:3000/assets/wound_imgs/wound1.png", description: "Week 1"})