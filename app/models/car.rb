class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image

  validates :make, :model, :year, :price, :description, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_make_and_model,
    against: [:make, :model],
    using: {
      tsearch: { prefix: true }
    }
end
