# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create! name: 'Jonas', lastname:"Shanabek", phone:87785547554, gender: "Male", age: 42, password:"451524aa", admin:false, email:"zhunissali.shanabek@ce.sdu.edu.kz"
User.create! name: 'Elmira', lastname:"Dzhanibekova", phone:87016781045, gender: "Male", age: "52", password:"451524aa", admin:true, email:"zhunissali.shanabek@outlook.com"

Category.delete_all
Category.create! id:1, title:"Пироги", description: "Something"
Category.create! id:2, title:"Торты", description: "Something"
Category.create! id:3, title:"Роллы", description: "Something"

Product.delete_all
p1 = Product.create! title: "Banana", category_id: 1, description:"Something",  price: 0.49, active: true
p2 = Product.create! title: "Apple", category_id: 2, description:"Something",  price: 0.29, active: true
p3 = Product.create! title: "Carton of Strawberries", category_id: 3, description:"Something", price: 1.99, active: true
