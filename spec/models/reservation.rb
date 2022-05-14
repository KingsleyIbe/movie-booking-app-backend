class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :location, presence: true, length: { maximum: 50 }
  validates :date, presence: true, length: { maximum: 20 }
end
