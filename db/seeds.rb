# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.create(make: "Toyota", model: "Corolla", year: 2021, description: "A reliable sedan.", image_url: "https://www.motortrend.com/uploads/2023/11/015-2023-Toyota-Corolla-Hybrid-in-action.jpg?w=768&width=768&q=75&format=webp", price: 20000, user_id: 1)
Car.create(make: "Ford", model: "Mustang", year: 2022, description: "A stylish sports car.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/1965_Shelby_Mustang_GT350_%2820984175008%29_%28cropped%29.jpg/640px-1965_Shelby_Mustang_GT350_%2820984175008%29_%28cropped%29.jpg", price: 30000, user_id: 1)
