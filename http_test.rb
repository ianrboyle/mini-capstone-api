require "http"

puts "What product would you like to see?"
puts "[1] All products"
puts "[2] laptop"
puts "[3] notebook"
puts "[4] pen"

user_input = gets.chomp.to_i

if user_input == 1

  response = HTTP.get("http://localhost:3000/products")
  products = response.parse
  pp products

elsif user_input == 2
  response = HTTP.get("http://localhost:3000/products/#{user_input - 1}")
  product = response.parse
  pp product
elsif user_input == 3
  response = HTTP.get("http://localhost:3000/products/#{user_input - 1}")
  product = response.parse
  pp product
elsif user_input == 4
  response = HTTP.get("http://localhost:3000/products/#{user_input - 1}")
  product = response.parse
  pp product
else
  return false
end
