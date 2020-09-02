# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::UniqueGenerator.clear

25.times do 
  product = Product.create(
    name: Faker::Food.unique.dish,
    description: Faker::Food.description,
    price: Faker::Commerce.price(range: 0.50..50.00),
    dairy_free: Faker::Boolean.boolean(true_ratio: 0.3),
    gluten_free: Faker::Boolean.boolean(true_ratio: 0.4),
    kosher: Faker::Boolean.boolean(true_ratio: 0.2),
    peanut_free: Faker::Boolean.boolean(true_ratio: 0.8),
    treenut_free: Faker::Boolean.boolean(true_ratio: 0.7),
    vegetarian: Faker::Boolean.boolean(true_ratio: 0.25),
    available: true,
    catering: Faker::Boolean.boolean(true_ratio: 0.1),
    featured: Faker::Boolean.boolean(true_ratio: 0.25)
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  product.save
end

User.create!(email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'admin',
  admin: true)


