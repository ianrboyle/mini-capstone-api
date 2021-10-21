# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#######ALREADY ADDED###########

# product = Product.create(name: "laptop", price: 900, description: "a portable computer")

# product = Product.create(name: "notebook", price: 5, description: "a place to write notes")

# product = Product.create(name: "pen", price: 1, description: "contains ink, use to write")

supplier = Supplier.create(name: "Apple", email: "apple@email.com", phone_number: "555-555-1234")

product = Product.create(name: FFaker::Product.product_name, description: FFaker::Product.product, price: FFaker::Number.decimal, quantity: FFaker::Number.number, supplier_id: 1)

image = Image.create(url: "https://www.twinwireless.net/wp-content/uploads/2017/09/Iphone-6s.jpg", product_id: 1)


