require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# - Surrey (annual_revenue of 224000, carries women's apparel only)
surrey = Store.create(name: "Surrey Store", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
# - Whistler (annual_revenue of 1900000 carries men's apparel only)
whistler = Store.create(name: "Whistler Store", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
# - Yaletown (annual_revenue of 430000 carries men's and women's apparel)
yaletown = Store.create(name: "Yaletown Store", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

p @mens_stores.each {|store| p store.name, store.annual_revenue }

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)




