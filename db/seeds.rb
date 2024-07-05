# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.find_or_create_by(make: "Toyota", model: "Corolla", year: 2021, description: "A reliable sedan.", image_url: "https://mag.toyota.co.uk/wp-content/uploads/sites/2/2022/06/2023-Toyota-Corolla-4-900x600.jpg", price: 20000, user_id: 1)

Car.find_or_create_by(make: "Ford", model: "Mustang", year: 2022, description: "A stylish sports car.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/1965_Ford_Mustang_2D_Hardtop_Front.jpg/1200px-1965_Ford_Mustang_2D_Hardtop_Front.jpg", price: 30000, user_id: 2)

Car.find_or_create_by(make: "Chevrolet", model: "Camaro", year: 2020, description: "A classic American muscle car.", image_url: "https://cdn.jdpower.com/JDPA_2020%20Chevrolet%20Camaro%20LT1%20Satin%20Steel%20Front%20Quarter%20View.jpg", price: 28000, user_id: 3)

Car.find_or_create_by(make: "Honda", model: "Civic", year: 2019, description: "A compact car with excellent fuel efficiency.", image_url: "https://coolhunting.com/wp-content/uploads/2020/07/HONDA-CIVIC-2020-02.jpg", price: 18000, user_id: 1)

Car.find_or_create_by(make: "Tesla", model: "Model 3", year: 2021, description: "An electric car with autopilot features.", image_url: "https://upload.wikimedia.org/wikipedia/commons/9/91/2019_Tesla_Model_3_Performance_AWD_Front.jpg", price: 35000, user_id: 2)

Car.find_or_create_by(make: "BMW", model: "3 Series", year: 2022, description: "A luxury sedan with sporty performance.", image_url: "https://www.topgear.com/sites/default/files/news-listicle/image/p90190454_highres_bmw-e30-07-2015.jpg", price: 40000, user_id: 3)

Car.find_or_create_by(make: "Mercedes-Benz", model: "C-Class", year: 2021, description: "A compact executive car with advanced features.", image_url: "https://www.autocar.co.uk/sites/autocar.co.uk/files/mercedes-c-class_0.jpg", price: 42000, user_id: 2)

Car.find_or_create_by(make: "Audi", model: "A4", year: 2020, description: "A compact luxury car with a high-tech interior.", image_url: "https://www.autocar.co.uk/sites/autocar.co.uk/files/audi-a4-rt-2015-0024_0.jpg", price: 37000, user_id: 2)

Car.find_or_create_by(make: "Lexus", model: "ES", year: 2022, description: "A midsize luxury sedan with a smooth ride.", image_url: "https://mag.lexus.co.uk/wp-content/uploads/sites/3/2022/12/LexusES-9-scaled-1-edited-scaled.jpg", price: 43000, user_id: 3)

Car.find_or_create_by(make: "Mazda", model: "CX-5", year: 2021, description: "A compact SUV with sporty handling.", image_url: "https://www.mazdausa.com/siteassets/vehicles/2024/cx-5/new-build--price/trims/ext.-360s/2.5-s-select/51k/e360-my24-cx50-selectpackage-rhodiumwhite-014.jpg", price: 25000, user_id: 3)
