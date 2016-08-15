class Booking < ApplicationRecord
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :user, presence: true
  validates :service, presence: true
  validates :validated_booking, inclusion: { in: [ true, false ] }

  belongs_to :service
  belongs_to :user
end
