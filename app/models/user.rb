require 'date'

class User < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :adult

  def adult
    today = Date.today
    age = today.year - birth_date.year
    if birth_date.present? && age < 18
      errors.add(:birth_date, "You're to young to comme here")
    end
  end
end
