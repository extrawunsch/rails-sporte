class Offer < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :title, :description, :category, :price, :location, :pick_up_at, presence: true
  validates :category, inclusion: { in: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'] }
end
