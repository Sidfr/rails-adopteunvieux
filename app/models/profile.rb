class Profile < ApplicationRecord
  validates :name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :user
end
