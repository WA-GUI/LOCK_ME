require 'date'

class User < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true, if: :adult?

  def adult?
    today = Date.today
    age = today.year - birth_date
    return age >= 18
  end
end
