# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation model' do
    user = User.create!(username: 'Kingsley', role: 'admin')
    movie = Movie.create!(
      title: 'Captain America and Winter Soldier',
        director: 'Fidge',
        description: 'As Steve Rogers adapts to the complexities of a contemporary world, he joins Natasha Romanoff and Sam Wilson in his mission to uncover the secret behind a deadly, mysterious assassin.',
        playing_time: '2hr',
        photo: 'https://tvline.com/wp-content/uploads/2021/04/captain-america-and-winter-soldier-renewal.png?w=620',
        release_date: '06-20-2022',
        genre: 'Action',
        ticket_price: '200.0',
        country: 'United States',
        lead_cast: 'Amkam'
    )
    subject { Reservation.new(user_id: user.id, movie_id: movie.id, location: 'Delhi,India', date: '08-09-2022') }
    before { subject.save! }

    context 'valid' do
      it 'movie to be valid' do
        expect(subject).to be_valid
      end

      it 'title of movie to be valid' do
        expect(subject.title).to eq 'Captain America and Winter Soldier'
      end

      it 'director of movie to be valid' do
        expect(subject.director).to eq 'Fidge'
      end

      it 'description of movie to be valid' do
        expect(subject.description).to eq 'As Steve Rogers adapts to the complexities of a contemporary world, he joins Natasha Romanoff and Sam Wilson in his mission to uncover the secret behind a deadly, mysterious assassin.'
      end

      it 'playing_time of movie to be valid' do
        expect(subject.playing_time).to eq '2hr'
      end

      it 'release_date of movie to be valid' do
        expect(subject.release_date).to eq '06-20-2022'
      end

      it 'genre of movie to be valid' do
        expect(subject.genre).to eq 'Action'
      end

      it 'ticket_price of movie to be valid' do
        expect(subject.ticket_price).to eq '200.0'
      end

      it 'country of movie to be valid' do
        expect(subject.country).to eq 'United States'
      end

      it 'lead_cast of movie to be valid' do
        expect(subject.lead_cast).to eq 'Amkam'
      end
    end

    context 'invalid' do
      it 'check the title is not blank' do
        subject.title = nil
        expect(subject).to_not be_valid
      end

      it 'check if the title is not exceeding 50 characters' do
        subject.title = 'Hello world Hello world Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end

      it 'check the title is not blank' do
        subject.director = nil
        expect(subject).to_not be_valid
      end

      it 'check if the title is not exceeding 30 characters' do
        subject.director = 'Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end

      it 'check the description is not blank' do
        subject.description = nil
        expect(subject).to_not be_valid
      end

      it 'check if the description is not exceeding 500 characters' do
        subject.description = 'Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world
        Hello world Hello world Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end

      it 'check the playing_time is not blank' do
        subject.playing_time = nil
        expect(subject).to_not be_valid
      end

      it 'check the photo is not blank' do
        subject.photo = nil
        expect(subject).to_not be_valid
      end

      it 'check the release_date is not blank' do
        subject.release_date = nil
        expect(subject).to_not be_valid
      end
      it 'check the genre is not blank' do
        subject.genre = nil
        expect(subject).to_not be_valid
      end

      it 'check if the genre is not exceeding 50 characters' do
        subject.genre = 'Hello world Hello world Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end

      it 'check the ticket_price is not blank' do
        subject.ticket_price = nil
        expect(subject).to_not be_valid
      end

      it 'check if ticket_price is numeric' do
        subject.ticket_price = 'not-numeric'
        expect(subject).to_not be_valid
      end

      it 'check if ticket_price is equal or greater than one' do
        expect(subject.ticket_price).to be >= 1
      end

      it 'check the country is not blank' do
        subject.country = nil
        expect(subject).to_not be_valid
      end
    end

    context 'invalid' do
      it 'check if the country is not exceeding 50 characters' do
        subject.country = 'Hello world Hello world Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end

      it 'check if the lead_cast is not exceeding 50 characters' do
        subject.lead_cast = 'Hello world Hello world Hello world Hello world Hello world Hello world'
        expect(subject).to_not be_valid
      end
    end
  end
end
