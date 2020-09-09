# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::UniqueGenerator.clear

Category.create!(heading: 'For the table', body: 'Some shared plates to start', display: true)
Category.create!(heading: 'First Course', body: 'A first course for each diner', display: true)
Category.create!(heading: 'Second Course', body: 'A second course for each diner', display: true)
Category.create!(heading: 'Third Course', body: 'An entree course', display: true)
Category.create!(heading: 'Dessert', body: 'Something sweet to finish', display: true)

5.times do |i|
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
    catering: Faker::Boolean.boolean(true_ratio: 0.5),
    featured: true,
    category: Category.find(1) 
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  filename = product.name.gsub(/ /, '_').to_s
  product.image.attach(io: URI.open(Faker::LoremFlickr.image(size: "640x480", 
                                                        search_terms: ['food'])),
                                                        filename: '#{filename}.jpg')
  product.save
end
5.times do |i|
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
    catering: Faker::Boolean.boolean(true_ratio: 0.5),
    featured: true,
    category: Category.find(2)
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  filename = product.name.gsub(/ /, '_').to_s
  product.image.attach(io: URI.open(Faker::LoremFlickr.image(size: "640x480", 
                                                        search_terms: ['food'])),
                                                        filename: '#{filename}.jpg')
  product.save
end
5.times do |i|
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
    catering: Faker::Boolean.boolean(true_ratio: 0.5),
    featured: true,
    category: Category.find(3)
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  filename = product.name.gsub(/ /, '_').to_s
  product.image.attach(io: URI.open(Faker::LoremFlickr.image(size: "640x480", 
                                                        search_terms: ['food'])),
                                                        filename: '#{filename}.jpg')
  product.save
end
5.times do |i|
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
    catering: Faker::Boolean.boolean(true_ratio: 0.5),
    featured: true,
    category: Category.find(4)
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  filename = product.name.gsub(/ /, '_').to_s
  product.image.attach(io: URI.open(Faker::LoremFlickr.image(size: "640x480", 
                                                        search_terms: ['food'])),
                                                        filename: '#{filename}.jpg')
  product.save
end
5.times do |i|
  product = Product.create(
    name: Faker::Dessert.unique.variety,
    description: Faker::Food.description,
    price: Faker::Commerce.price(range: 0.50..50.00),
    dairy_free: Faker::Boolean.boolean(true_ratio: 0.3),
    gluten_free: Faker::Boolean.boolean(true_ratio: 0.4),
    kosher: Faker::Boolean.boolean(true_ratio: 0.2),
    peanut_free: Faker::Boolean.boolean(true_ratio: 0.8),
    treenut_free: Faker::Boolean.boolean(true_ratio: 0.7),
    vegetarian: Faker::Boolean.boolean(true_ratio: 0.25),
    available: true,
    catering: Faker::Boolean.boolean(true_ratio: 0.5),
    featured: true,
    category: Category.find(5)
  )
  if product.vegetarian == true && product.dairy_free == true
    product.vegan = Faker::Boolean.boolean(true_ratio: 0.9)
  else
    product.vegan = false
  end
  filename = product.name.gsub(/ /, '_').to_s
  product.image.attach(io: URI.open(Faker::LoremFlickr.image(size: "640x480", 
                                                        search_terms: ['food'])),
                                                        filename: '#{filename}.jpg')
  product.save
end

User.create!(email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  username: 'admin',
  admin: true)


