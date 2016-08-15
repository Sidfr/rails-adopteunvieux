class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :expert, presence: true
  validates :user, presence: true

  belongs_to :user
end
