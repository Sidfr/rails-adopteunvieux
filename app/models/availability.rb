class Availability < ApplicationRecord
  validates :startdate, presence: true
  validates :enddate, presence: true

  has_many :services
  has_many :users, through: :services
end
