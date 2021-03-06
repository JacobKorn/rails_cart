# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

30.times do
	Product.create(
		name: Faker::Commerce.product_name,
		price: rand(20..300),
		description: Faker::Lorem.sentence(rand(3..7))
		)
	end
