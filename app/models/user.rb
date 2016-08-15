class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_many :services
  has_many :availabilities, through: :services
  has_many :bookings
  has_many :sent, class_name: 'Review', foreign_key: 'sender_id'
  has_many :received, class_name: 'Review', foreign_key: 'recipient_id'

end



