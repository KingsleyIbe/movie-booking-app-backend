require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Movie model' do
    subject do
      Movie.new(
        title: 'The Godfather',
        director: 'Francis Ford Coppola',
        description: 'The aging patriarch of an organized crime
                      dynasty transfers control of his clandestine
                      empire to his reluctant son.',
        playing_time: '2hrs. 59mins',
        photo: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYWUzNC00MTY5LWJmZDAtZTc5ZjI1ZWI0OTUyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg',
        release_date: '1972-03-15',
        genre: 'Drama',
        ticket_price: '10',
        country: 'USA',
        lead_cast: 'Marlon Brando, Al Pacino, James Caan'
      )
    end
    before { subject.save }

    context 'valid' do
      it 'movie to be valid' do
        expect(subject).to be_valid
      end

      it 'title of movie to be valid' do
        expect(subject.title).to eq 'The Godfather'
      end

      it 'director of movie to be valid' do
        expect(subject.director).to eq 'Francis Ford Coppola'
      end

      it 'description of movie to be valid' do
        expect(subject.description).to eq 'The aging patriarch of an organized crime dynasty
                                           transfers control of his clandestine empire to his
                                           reluctant son.'
      end

      it 'playing_time of movie to be valid' do
        expect(subject.playing_time).to eq '2hrs. 59mins'
      end

      it 'photo of movie to be valid' do
        expect(subject.photo).to eq 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYWUzNC00MTY5LWJmZDAtZTc5ZjI1ZWI0OTUyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg'
      end

      it 'release_date of movie to be valid' do
        expect(subject.release_date).to eq '1972-03-15'
      end

      it 'genre of movie to be valid' do
        expect(subject.genre).to eq 'Drama'
      end

      it 'ticket_price of movie to be valid' do
        expect(subject.ticket_price).to eq 10
      end

      it 'country of movie to be valid' do
        expect(subject.country).to eq 'USA'
      end

      it 'lead_cast of movie to be valid' do
        expect(subject.lead_cast).to eq 'Marlon Brando, Al Pacino, James Caan'
      end
    end

    context 'invalid' do
         it 'check the title is not blank' do
        subject.title = nil
        expect(subject).to_not be_valid
      end

      it 'check the director is not blank' do
        subject.director = nil
        expect(subject).to_not be_valid
      end

      it 'check if the description is not exceeding 500 characters' do
        subject.description = 'a' * 501
        expect(subject).to_not be_valid
      end

      it 'check if the playing_time is not blank' do
        subject.playing_time = nil
        expect(subject).to_not be_valid
      end

      it 'check if the photo is not blank' do
        subject.photo = nil
        expect(subject).to_not be_valid
      end

      it 'check if the release_date is not blank' do
        subject.release_date = nil
        expect(subject).to_not be_valid
      end

      it 'check if the genre is not blank' do
        subject.genre = nil
        expect(subject).to_not be_valid
      end

      it 'check if the ticket_price is not blank' do
        subject.ticket_price = nil
        expect(subject).to_not be_valid
      end

      it 'check if the country is not blank' do
        subject.country = nil
        expect(subject).to_not be_valid
      end

      it 'check if the lead_cast is not blank' do
        subject.lead_cast = nil
        expect(subject).to_not be_valid
      end

      it 'check if ticket_price is numeric' do
        subject.ticket_price = 'not-numeric'
        expect(subject).to_not be_valid
      end

      it 'check if ticket_price is equal or greater than one' do
        subject.ticket_price = 0
        expect(subject).to_not be_valid
      end
    end
  end
end
