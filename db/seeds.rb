# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.create(title: 'Final Capstone', director: 'Team',
  description: 'Now you know what it feels like to write rails',
playing_time: '2pm', photo: 'no photo link', release_date: '6-4-20212', genre: 'classic',
ticket_price: '$10', country: 'Nigeria', lead_cast: 'Busiwa Amadu Kingsley')

Movie.create(title: 'Rails Final Capstone', director: 'Team',
  description: 'Now you know what it feels like to write rails',
playing_time: '2pm', photo: 'no photo link', release_date: '1-4-20212', genre: 'classic',
ticket_price: '$10', country: 'South-Africa', lead_cast: 'Busiwa Amadu Kingsley')
