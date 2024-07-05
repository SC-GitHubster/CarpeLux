# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.find_or_create_by(make: "Toyota", model: "Corolla", year: 2021, description: "A reliable sedan.", image_url: "https://www.motortrend.com/uploads/2023/11/015-2023-Toyota-Corolla-Hybrid-in-action.jpg?w=768&width=768&q=75&format=webp", price: 20000, user_id: 1)

Car.find_or_create_by(make: "Ford", model: "Mustang", year: 2022, description: "A stylish sports car.", image_url: "https://www.motortrend.com/uploads/2022/10/2022-Ford-Mustang-GT-Action.jpg?w=768&width=768&q=75&format=webp", price: 30000, user_id: 2)

Car.find_or_create_by(make: "Chevrolet", model: "Camaro", year: 2020, description: "A classic American muscle car.", image_url: "https://www.motortrend.com/uploads/2020/11/2020-Chevrolet-Camaro-SS-front-three-quarters.jpg?w=768&width=768&q=75&format=webp", price: 28000, user_id: 3)

Car.find_or_create_by(make: "Honda", model: "Civic", year: 2019, description: "A compact car with excellent fuel efficiency.", image_url: "https://www.motortrend.com/uploads/2019/06/2019-Honda-Civic-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 18000, user_id: 1)

Car.find_or_create_by(make: "Tesla", model: "Model 3", year: 2021, description: "An electric car with autopilot features.", image_url: "https://www.motortrend.com/uploads/2021/11/2021-Tesla-Model-3-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 35000, user_id: 2)

Car.find_or_create_by(make: "BMW", model: "3 Series", year: 2022, description: "A luxury sedan with sporty performance.", image_url: "https://www.motortrend.com/uploads/2022/02/2022-BMW-3-Series-Side.jpg?w=768&width=768&q=75&format=webp", price: 40000, user_id: 3)

Car.find_or_create_by(make: "Mercedes-Benz", model: "C-Class", year: 2021, description: "A compact executive car with advanced features.", image_url: "https://www.motortrend.com/uploads/2021/05/2021-Mercedes-Benz-C-Class-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 42000, user_id: 2)

Car.find_or_create_by(make: "Audi", model: "A4", year: 2020, description: "A compact luxury car with a high-tech interior.", image_url: "https://www.motortrend.com/uploads/2020/04/2020-Audi-A4-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 37000, user_id: 2)

Car.find_or_create_by(make: "Lexus", model: "ES", year: 2022, description: "A midsize luxury sedan with a smooth ride.", image_url: "https://www.motortrend.com/uploads/2022/05/2022-Lexus-ES-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 43000, user_id: 3)

Car.find_or_create_by(make: "Mazda", model: "CX-5", year: 2021, description: "A compact SUV with sporty handling.", image_url: "https://www.motortrend.com/uploads/2021/08/2021-Mazda-CX-5-Front-Three-Quarters.jpg?w=768&width=768&q=75&format=webp", price: 25000, user_id: 3)
