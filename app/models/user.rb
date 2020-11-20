class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  has_many :offers, through: :bookings, dependent: :destroy # all offers where I am the buyer
  has_many :host_offers, class_name: 'Offer', foreign_key: :host_id #all offers where I am the host
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
