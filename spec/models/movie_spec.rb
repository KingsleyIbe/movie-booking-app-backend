# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Movie model' do
    subject do
      Movie.new(
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
        expect(subject.description).to eq 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'
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

