# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |i|
#   Product.create(name: "Product ##{i}", description: "A product.")
# end
categories = Category.create([
	{ name: "Fresh milk", description: "Fresh milk products" }, 
	{ name: "Dairy drinks", description: "Dairy drinks products" }, 
	{ name: "Milk replacement", description: "Milk replacement products" }, 
	{ name: "Eggs", description: "Eggs products" }, 
	{ name: "Bread", description: "Bread products" }, 
	{ name: "Pasta", description: "Pasta products" }, 
	{ name: "Olive oil", description: "Olive oil products" }, 
	{ name: "Fresh meat", description: "Fresh meat products" }, 
	{ name: "Fresh fruits", description: "Fresh fruits products" }, 
	{ name: "Fresh vegetables", description: "Fresh vegetables products" }
])

10.times do |i|
	10.times do |j|
	  	Product.create(name: "#{categories[i].name} #{('a'..'z').to_a.shuffle[0,8].join}", description: "A product.", category_id: i+1)
	end
end