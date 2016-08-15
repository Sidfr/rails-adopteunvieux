class Review < ApplicationRecord

  validates :description, presence: true
  validates :stars, presence: true
  validates :sender, presence: true
  validates :recipient, presence: true

  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
end
