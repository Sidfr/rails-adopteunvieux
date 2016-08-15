class Service < ApplicationRecord

  validates :description, presence: true
  validates :city, presence: true
  validates :availability, presence: true
  validates :user, presence: true


  belongs_to :availability
  belongs_to :user
  has_many :bookings


end
