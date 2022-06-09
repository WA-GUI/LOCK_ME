require 'date'

class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user

  validates :user, presence: true
  validates :service, presence: true
  validates :date, presence: true, uniqueness: { message: "I am already locked on this day!" }
  validate :reservation

  def reservation
    today = Date.today
    futur = date - today
    if futur.negative?
      errors.add(:date, "You can't lock me in the past!")
    end
  end
end
