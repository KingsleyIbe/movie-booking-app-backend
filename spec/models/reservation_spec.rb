# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation model' do
    user = User.create(username: "Busiwa", role: "admin")
    movie = Movie.create!(
      title: 'The Godfather',
      director: 'Francis Ford Coppola',
      description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
      playing_time: '2hrs. 59mins',
      photo: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYWUzNC00MTY5LWJmZDAtZTc5ZjI1ZWI0OTUyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg',
      release_date: '1972-03-15',
      genre: 'Drama',
      ticket_price: '10',
      country: 'USA',
      lead_cast: 'Marlon Brando, Al Pacino, James Caan'
    )
    subject { Reservation.new(user: user, movie: movie, location: 'Cinema', date: '2020-01-01') }
    before { subject.save! }
