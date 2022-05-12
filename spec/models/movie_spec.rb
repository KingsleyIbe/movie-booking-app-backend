require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'Movie model' do
    subject do
      Movie.new(
        title: 'Test',
        director: 'John Doe',
        description: 'Hello world',
        playing_time: '10',
        photo: 'dahkdasdasd.png',
        release_date: '2019-02-02',
        genre: 'Testing',
        ticket_price: 20,
        country: 'Zambia',
        lead_cast: 'Tom',
      )
    end
    before { subject.save }

    context 'valid' do
      it 'movie to be valid' do
        expect(subject).to be_valid
      end

      it 'title of movie to be valid' do
        expect(subject.title).to eq 'Test'
      end

      it 'director of movie to be valid' do
        expect(subject.director).to eq 'John Doe'
      end

      it 'country of movie to be valid' do
        expect(subject.country).to eq 'Zambia'
      end

      it 'playing_time of movie to be valid' do
        expect(subject.playing_time).to eq '10'
      end

      it 'photo of movie to be valid' do
        expect(subject.photo).to eq 'dahkdasdasd.png'
      end
    end

    context 'invalid' do
      it 'check the title is not blank' do
        subject.title = nil
        expect(subject).to_not be_valid
      end

      it 'check the description is not blank' do
        subject.description = nil
        expect(subject).to_not be_valid
      end

      it 'check the photo is not blank' do
        subject.photo = nil
        expect(subject).to_not be_valid
      end

      it 'check the country is not blank' do
        subject.country = nil
        expect(subject).to_not be_valid
      end

      it 'check the genre is not blank' do
        subject.genre = nil
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
    end
  end
end