class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :begin_on, presence: true
  validates :end_on, presence: true
end
