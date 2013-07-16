# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ['Fastfood', 'Chinese', 'Steakhouse', 'Japanese', 'Italian', 'Wings'].each do |cat|
#   Category.create! name: cat
# end

Restaurant.create! name: "Keg", 
  address: "150 East Beaver Creak",
  description: "Bomb Ass",
  phone_number: "416-555-5555",
  price_range: "$25-50",
  category_id: Category.where(name: 'Steakhouse').first.id
  # user_id: User.where(is_owner: true).where(name: 'Joe').first.id

# User.create! name: "Trevor",
# 	email: "trevor@email.com",
# 	password: "foobar",
# 	password_confirmation: "foobar",
# 	is_owner: true



