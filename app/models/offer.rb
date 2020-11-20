class Offer < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :title, :description, :category, :price, :location, :pick_up_at, presence: true
  validates :category, inclusion: { in: ['Gym equipment', 'Ball sports', 'Racket sports', 'Water sports', 'Winter sports', 'Fighting sports', 'Yoga equipment', 'Other'] }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
