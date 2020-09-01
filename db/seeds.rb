# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
25.times do 
  product = Product.new
  product.name = Faker::Food.dish
  product.description = Faker::Food.description
  product.price = Faker::Commerce.price(range: 0.50..50.00)
  product.dairy_free = Faker::Boolean.boolean(true_ratio: 0.3)
  product.gluten_free = Faker::Boolean.boolean(true_ratio: 0.4)
  product.kosher = Faker::Boolean.boolean(true_ratio: 0.2)
  product.peanut_free = Faker::Boolean.boolean(true_ratio: 0.8)
  product.treenut_free = Faker::Boolean.boolean(true_ratio: 0.7)
  product.available = true
  product.catering = Faker::Boolean.boolean(true_ratio: 0.1)
  product.featured = Faker::Boolean.boolean(true_ratio: 0.25)
  product.save
end

User.create!(email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'admin'
  admin: true)