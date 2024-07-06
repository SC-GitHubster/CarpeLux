# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all

5.times do |i|
  User.create!(username: "user_#{i}", email: "user_#{i}@email.com", password: "user_#{i}")
end

Car.create!(make: "Toyota", model: "Corolla", year: 2021, description: "A reliable sedan.", image_url: "https://www.usnews.com/object/image/0000018c-5f0b-dc6c-aded-ffbf2d960000/https-cars-dms-usnews-com-static-uploads-images-auto-custom-15294-original-2024-toyota-corolla-angular-front-1.jpg?update-time=1693333947000&size=responsive640", user: User.all.sample)

Car.create!(make: "Lexus", model: "ES", year: 2022, description: "A midsize luxury sedan with a smooth ride.", image_url: "https://mag.lexus.co.uk/wp-content/uploads/sites/3/2021/03/Lexus-ES-300-fourth-05-696x416-1.jpg", user: User.all.sample)
