class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :movies, through: :reservations

  validates :username, presence: true, length: { maximum: 50 }
  validates :role, presence: true
end
