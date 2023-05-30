class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chicken
  validates :breed, :price, :description, presence: true
end
