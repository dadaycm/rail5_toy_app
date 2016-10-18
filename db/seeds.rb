# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all()
User.create!( {name: "Xiexie" , email: "caixieen@liu.com" })
User.create!( {name: "Feifei" , email: "feifei@liu.com" })
User.create!( {name: "Yaoyao" , email: "yaoyao@liu.com" })
User.create!( {name: "Yiyang" , email: "yiyang@liu.com" })

Toy.delete_all()
Toy.create!(  {name: "great-wall(fake)" , weight: 200} )
Toy.create!(  {name: "little-car" , weight: 500} )
Toy.create!(  {name: 'paper-panda' , weight: 260, favorite: true} )
Toy.create!(  {name: "little-rail" , weight: 100} )
