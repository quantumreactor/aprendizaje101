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
Status.destroy_all


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

lead3 = Lead.new({
                   status: "prospecto",
                   email: "sirlord@uk.co",
                   name: "Iain M Banks",
                   phone: "+56982434254",
                   indate: "2021-09-09",
                   user: user2,
                 })
lead3.save

lead4 = Lead.new({
                   status: "interesado",
                   email: "gaston@ar.com",
                   name: "Gaston Argentini",
                   phone: "+56934554",
                   indate: "2019-01-11",
                   user: user1,
                 })
lead4.save

lead5 = Lead.new({
                   status: "interesado",
                   email: "paco@tenerife.com",
                   name: "Francisco de la Palma",
                   phone: "+569824563",
                   indate: "2021-07-05",
                   user: user2,
                 })
lead5.save

lead6 = Lead.new({
                   status: "prospecto",
                   email: "kludio@ct.com",
                   name: "Claudio Hortigosa",
                   phone: "+56934563564",
                   indate: "2021-03-02",
                   user: user2,
                 })
lead6.save

lead7 = Lead.new({
                   status: "prospecto",
                   email: "rcanales@segsal.com",
                   name: "Roberto Canales",
                   phone: "+5652345234",
                   indate: "2021-05-02",
                   user: user1,
                 })
lead7.save

lead8 = Lead.new({
                   status: "cliente",
                   email: "edunal@cls.com",
                   name: "Eduardo Aldunate",
                   phone: "+5694563654",
                   indate: "2021-04-04",
                   user: user1,
                 })
lead8.save

lead9 = Lead.new({
                   status: "prospecto",
                   email: "artemis@helenics.com",
                   name: "Arturo Temistocles",
                   phone: "+56985675674",
                   indate: "2021-06-03",
                   user: user0,
                 })
lead9.save



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

puts "Seeding meetings ===================="
meeting0 = Meeting.new({
                          summary: "mas datos",
                          content: "Ofrecer descripcion de ventajas didacticas del producto",
                          user: user0,
                          lead: lead0,
                        })
meeting0.save

meeting1 = Meeting.new({
                         summary: "aun mas datos",
                         content: "demostracion de valor agregado",
                         user: user0,
                         lead: lead1,
                       })
meeting1.save
meeting2 = Meeting.new({
                         summary: "llameme",
                         content: "demostracion de producto",
                         user: user1,
                         lead: lead1,
                       })
meeting2.save
meeting3 = Meeting.new({
                         summary: "llamar el lunes",
                         content: "quiere saber mas",
                         user: user1,
                         lead: lead1,
                       })
meeting3.save


puts "#{Meeting.all.count} meetings created!"

Status.create(
  status: "interesado"
)
Status.create(
  status: "prospecto"
)
Status.create(
  status: "cliente"
)
puts "#{Status.all.count} statuses created!"

puts "Done!"
