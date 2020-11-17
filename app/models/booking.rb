class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :begin_on, presence: true
  # validates :end_smaller_than_begin?
  validates :end_on, presence: true #end_on > begin_on

 # def end_smaller_than_begin?
  #  if begin_on > end_on
   #   errors.add(:begin_on, 'end date can not be before begin date')
    #end
  #end
end
