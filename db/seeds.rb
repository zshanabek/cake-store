# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: 'Jonas', lastname:"Shanabek", phone:87785547554, gender: "Male", age: 42, password:"451524aa", admin:false, email:"zhunissali.shanabek@ce.sdu.edu.kz"
User.create! name: 'Elmira', lastname:"Dzhanibekova", phone:87016781045, gender: "Male", age: "52", password:"451524aa", admin:true, email:"zhunissali.shanabek@outlook.com"