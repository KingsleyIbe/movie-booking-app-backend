module Api
  module V1
    class ReservationsController < ApplicationController
      def index
        @reservations = Reservation.all
        if @reservations
          render json: { success: true, message: 'Loaded all reservations', data: { reservations: @reservations } }, status: :ok
        else
          render json: { success: false, errors: 'Opps! Something went wrong' }, status: :unprocessable_entity
        end
      end

      # POST /reservations
      def create
        @new_reservation = Reservation.new(movie_title: params[:movie_title], show_date: params[:show_date], show_time: params[:show_time],
                               ticket_price: params[:ticket_price])
        if @new_reservation.save
          render json: { success: true, message: 'Reservation created', data: { reservation: @new_reservation } }, status: :created
        else
          render json: { success: false, errors: new_reservation.errors }, status: :unprocessable_entity
        end
      end
    end
  end
end