require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
burnaby = Store.create(name: "Burnaby Store", annual_revenue: 30000, mens_apparel: true, womens_apparel: true )
# - Richmond (annual_revenue of 1260000 carries women's apparel only)
richmond = Store.create(name: "Richmond Store", annual_revenue: 1260000, mens_apparel: true, womens_apparel: true)
# - Gastown (annual_revenue of 190000 carries men's apparel only)
gastown = Store.create(name: "Gastown Store", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
