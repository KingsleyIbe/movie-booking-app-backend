module Api
  module V1
    class UsersController < ApplicationController
      # User registration
      def register
        @user = User.find_by(username: params[:username])
        if @user
          render json: { success: false, username: 'Username already taken' }, status: :unprocessable_entity
        else
          @new_user = User.create(username: params[:username])
          render json: { success: true, username: @new_user }, status: :created
        end
      end

      # user login
      def login
        @user = User.find_by(username: params[:username])
        if @user
          render json: { success: true, username: @user }, status: :created
        else
          render json: { success: false, username: 'Username does not exist' }, status: :unprocessable_entity
        end
      end
    end
  end
end
