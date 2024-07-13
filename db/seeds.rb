include ActionView::Helpers::AssetUrlHelper
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
def asset_path(file)
  ActionController::Base.helpers.asset_path(file)
end

# Destroy all records in the correct order
Booking.destroy_all
Car.destroy_all
User.destroy_all

5.times do |i|
  User.create!(username: "user_#{i}", email: "user_#{i}@email.com", password: "user_#{i}")
end

Car.create([
  {
    model: 'Model S',
    make: 'Tesla',
    description: 'A luxury electric car with impressive acceleration and high-tech features.',
    year: 2020,
    image_url: '/assets/images/tesla/tesla3.jpg',
    user_id: User.first.id,
    price_per_day: 150.00
  },
  {
    model: '911 Turbo',
    make: 'Porsche',
    description: 'A high-performance sports car with a distinctive design and powerful engine.',
    year: 2019,
    image_url: '/assets/images/turbo/turbo1.jpg',
    user_id: User.second.id,
    price_per_day: 200.00
  },
  {
    model: 'Aventador',
    make: 'Lamborghini',
    description: 'A supercar known for its bold design and breathtaking speed.',
    year: 2021,
    image_url: '/assets/images/lambo1/lambo4.jpg',
    user_id: User.third.id,
    price_per_day: 350.00
  },
  {
    model: 'Ghost',
    make: 'Rolls-Royce',
    description: 'A luxurious sedan offering unparalleled comfort and refinement.',
    year: 2020,
    image_url: '/assets/images/rr_ghost1/ghost1.webp',
    user_id: User.first.id,
    price_per_day: 400.00
  },
  {
    model: 'Chiron',
    make: 'Bugatti',
    description: 'An iconic supercar with an extraordinary top speed and stunning design.',
    year: 2021,
    image_url: '/assets/images/bugatti/bugatti3.jpg',
    user_id: User.second.id,
    price_per_day: 1500.00
  },
  {
    model: 'Continental GT',
    make: 'Bentley',
    description: 'A grand tourer that combines performance and luxury in an elegant package.',
    year: 2019,
    image_url: '/assets/images/bently_continental/bently2.jpg',
    user_id: User.third.id,
    price_per_day: 300.00
  },
  {
    model: '488 GTB',
    make: 'Ferrari',
    description: 'A stunning supercar with exhilarating performance and elegant design.',
    year: 2019,
    image_url: '/assets/images/ferrari488/ferrari1.jpg',
    user_id: User.first.id,
    price_per_day: 1200.00
  },
  {
    model: 'Huracan',
    make: 'Lamborghini',
    description: 'A high-performance supercar known for its aggressive styling and speed.',
    year: 2020,
    image_url: '/assets/images/lambo1/lambo1.jpg',
    user_id: User.second.id,
    price_per_day: 900.00
  },
  {
    model: 'Phantom',
    make: 'Rolls-Royce',
    description: 'A luxury sedan offering unparalleled comfort, refinement, and craftsmanship.',
    year: 2018,
    image_url: '/assets/images/rr_phantom/phantom2.jpg',
    user_id: User.third.id,
    price_per_day: 1500.00
  },
  {
    model: 'Panamera',
    make: 'Porsche',
    description: 'A luxury sports sedan that combines performance and practicality.',
    year: 2021,
    image_url: '/assets/images/Porsche/porsche1.jpg',
    user_id: User.first.id,
    price_per_day: 400.00
  },
  {
    model: 'DB11',
    make: 'Aston Martin',
    description: 'A grand tourer that epitomizes British luxury and performance.',
    year: 2019,
    image_url: '/assets/images/aston/am2.jpg',
    user_id: User.second.id,
    price_per_day: 700.00
  },
  {
    model: 'Ghibli',
    make: 'Maserati',
    description: 'A luxury sedan with a distinctive Italian style and powerful performance.',
    year: 2020,
    image_url: '/assets/images/maserati/maserati1.jpg',
    user_id: User.third.id,
    price_per_day: 350.00
  }
])
