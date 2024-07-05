class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cars
  has_many :bookings
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
end
