# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Food", description: "Grocery, fruits, treats and other food expenses")
Category.create(name: "Entertainment", description: "Movies, iTunes, App Store and related expenses ")
Category.create(name: "Education", description: "Tuition Fees, books, stationary")
Category.create(name: "Automotive", description: "Car Repair, upgrade, oil change or service")
Category.create(name: "Gas", description: "Car gas tank fill up")
Category.create(name: "Clothing", description: "Shirts, pants, lowers, shorts, shoes, socks, underwears")
Category.create(name: "Pay", description: "work pay received")
Category.create(name: "Other", description: "categories that are not mentioned here")

