# app/controllers/authentication_controller.rb
class AuthenticationController < ApplicationController
    skip_before_action :authenticate_user, only: :authenticate
    # return auth token once user is authenticated
    def authenticate
      auth_token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
      user = User.find_by(email: auth_params[:email])
      # HTTP-only cookie stored with refresh_token
      cookies.signed[:jwt] = {
        value: auth_token, 
        httponly: true, 
        same_site: :none,
        secure: true,
        # domain: 'localhost:3001', 
        domain: %w(localhost:3000 localhost:3001), 
        expires: 2.hours.from_now}
                
      json_response(auth_token: auth_token, user_role: user.role,user_id: user.id)
    end

    private

    def auth_params
      params.permit(:email, :password, authentication: [:email, :password])
    end
end