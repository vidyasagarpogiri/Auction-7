# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create!(
  name: "Jaboree",
  email: "jaboree@gmail.com",
  password: 'jaboree2010',
  password_confirmation: "jaboree2010",
)

User.create!(
  name: "Jason",
  email: "jason@gmail.com",
  password: 'jason2010',
  password_confirmation: "jason2010",
)

User.create!(
  name: "Jonathan",
  email: "jonathan@gmail.com",
  password: 'jmoney2010',
  password_confirmation: "jmoney2010",
)


Category.delete_all
Category.create!(
	name: "iMac",
	description: "",
)

Category.create!(
	name: "MacBooks",
	description: "",
)

Category.create!(
	name: "Mac Desktop",
	description: "",
)

Category.create!(
	name: "Accessories",
	description: "",
)

