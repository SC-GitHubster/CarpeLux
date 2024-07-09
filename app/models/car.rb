class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image

  validates :name, :model, :year, :price, :description, presence: true
end
