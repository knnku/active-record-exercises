require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum("annual_revenue")

p "Sum of all stores is: $#{@total_revenue}"

@avg_annual_revenue = Store.average("annual_revenue")

p "The annual avg of all stores is: $#{@avg_annual_revenue}"

@one_mil_stores = Store.where("annual_revenue > ?", 1000000).count

p "Number of stores who made 1m or more: #{@one_mil_stores}"