require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Surrey = Store.create(name: "Surrey", annual_revenue:224000, mens_apparel: false,womens_apparel: true)
 Whistler = Store.create(name: "Whistler", annual_revenue:1900000, mens_apparel: true,womens_apparel: false)
 Yaletown = Store.create(name: "Yaletown", annual_revenue:430000, mens_apparel: true,womens_apparel: true)


mens_app =Store.where(mens_apparel: true)

mens_app.each{|x| puts x.name, x.annual_revenue}

womens_app =Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

pp womens_app