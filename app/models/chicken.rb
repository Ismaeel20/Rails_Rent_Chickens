
class Chicken < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :bookings

  validates :breed, :price, :description, presence: true

  has_one_attached :photo

  pg_search_scope :search_by_breed_and_description,
  against: [ :breed, :description ],
  using: {
    tsearch: { prefix: true }
  }
end
