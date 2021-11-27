# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meeting.destroy_all
Lead.destroy_all
User.destroy_all


puts "Database records wiped clean!"

puts "Seeding users ============================="

user0 = User.new({
  email:  "admin@gmail.com",
  password:  "291ABASD932",
  username: "admin",
  name: "godzilla",
  })
user0.save
  
user1 = User.new({
    email:  "usuario1@gmail.com",
    password:  "291ABASD934",
    username: "usuario1",
    name: "anguirus",
    })
user1.save

user2 = User.new({
  email:  "usuario2@gmail.com",
  password:  "281ABASD932",
  username: "usuario2",
  name: "megalon",
  })
user2.save

puts "#{User.all.count} users created!"
puts "Seeding leads ================================"

# user0
lead0 = Lead.new({
  status: "prospecto",
  email: "pepe@iberia.com",
  name: "jose iberico",
  phone: "+5698245854",
  indate: "2021-09-03",
  user: user0,
})
lead0.save

lead1 = Lead.new({
  status: "interesado",
  email: "habibi@persia.com",
  name: "habibollah nasrullah",
  phone: "+5698245854",
  indate: "2021-06-10",
  user: user0,
})
lead1.save

lead2 = Lead.new({
  status: "cliente",
  email: "nathan@aussie.com",
  name: "Nathan McCulloch",
  phone: "+5698245854",
  indate: "2021-02-08",
  user: user0,
})
lead2.save

# meeting0 = Meeting.new({
#   summary: "mas datos",
#   content: "Ofrecer descripcion de ventajas didacticas del producto",
#   user: user0,
#   lead: lead0,
# })
# meeting0.save


# user1
Lead.create(
  status: "prospecto",
  email: "tito@iberia.com",
  name: "roberto cadiz",
  phone: "+56912457856",
  indate: "2021-04-06",
  user: user1
)
Lead.create(
  status: "interesado",
  email: "rulo@scel.com",
  name: "rodolfo usquidez",
  phone: "+569564654",
  indate: "2021-02-08",
  user: user1
)

# user2
Lead.create(
  status: "prospecto",
  email: "jorge@scel.com",
  name: "Jorge Sanhueza",
  phone: "+569834545654",
  indate: "2021-06-07",
  user: user2
)

puts "#{Lead.all.count} leads created!"


puts "Done!"