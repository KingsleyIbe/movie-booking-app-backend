class ApplicationController < ActionController::API
include ActionController::MimeResponds
      
        respond_to :json
      
        before_action :authenticate_user!
        before_action :configure_permitted_parameters, if: :devise_controller?
