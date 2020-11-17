# app/controllers/users_controller.rb
class UsersController < ApplicationController

    skip_before_action :authorize_user, only: :create
    # POST /signup
    # return authenticated token upon signup
    def create
      user = User.create!(user_params)
      auth_token = AuthenticateUser.new(user.email, user.password).call
      # HTTP-only cookie stored with refresh_token
      cookies.signed[:jwt] = {value:  auth_token, httponly: true, SameSite: "Strict", expires: 2.hours.from_now}
          
      response = { message: Message.account_created, auth_token: auth_token }
      json_response(response, :created)
    end

    def logout
      current_user && current_user.a 
      json_response(response, :created)
    end

  
    private
  
    def user_params
      params.permit(
        :username,
        :email,
        :role,
        :password,
        :password_confirmation
      )
    end
  end
