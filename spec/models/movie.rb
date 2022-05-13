class Movie < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :title, presence: true, length: { maximum: 50 }
  validates :director, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :playing_time, presence: true, length: { maximum: 50 }
  validates :photo, presence: true, length: { maximum: 250 }
  validates :release_date, presence: true, length: { maximum: 50 }
  validates :genre, presence: true, length: { maximum: 50 }
  validates :ticket_price, presence: true, numericality: { greater_than: 0 }
  validates :country, presence: true, length: { maximum: 50 }
  validates :lead_cast, presence: true, length: { maximum: 50 }
end
