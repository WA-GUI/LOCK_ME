class User < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :birth_date, presence: true, if: :adult?

  # def adult?
  #   today = Date.new
  #   age = today - birth_date
  #   return age >= 18
  # end
end
