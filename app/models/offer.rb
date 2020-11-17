class Offer < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings
  has_many :users, through: :bookings

  validates :title, :description, :category, :price, :location, :pick_up_at, presence: true
end


