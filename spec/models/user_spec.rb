# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(username: 'Busiwa', role: 'admin') }
    before { subject.save }

    context 'valid' do
      it 'user to be valid' do
        expect(subject).to be_valid
      end

      it 'username of user to be valid' do
        expect(subject.username).to eq 'Busiwa'
      end

      it 'role of user to be valid' do
        expect(subject.role).to eq 'admin'
      end
    end

    context 'invalid' do
      it 'check the username is not blank' do
        subject.username = nil
        expect(subject).to_not be_valid
      end