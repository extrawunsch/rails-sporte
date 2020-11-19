class Offer < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :title, :description, :category, :price, :location, :pick_up_at, presence: true
  validates :category, inclusion: { in: ['ball sports', 'racket sports', 'gym equipment', 'water sports', 'winter sports', 'biking', 'fighting sports', 'yoga equipment', 'other'] }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_?
end
