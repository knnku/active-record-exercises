require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


puts "Store Creation - Enter a Store Name: "
store_name = gets.chomp


new_store = Store.create(name: "#{store_name}", annual_revenue: nil , mens_apparel: nil , womens_apparel: nil)


if new_store.valid?
  puts "Store created successfully!"
else
  puts "Error creating store:"
  new_store.errors.full_messages.each { |message|
    puts "- #{message}"
  }
end