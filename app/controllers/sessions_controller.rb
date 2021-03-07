# app/controllers/authentication_controller.rb
class SessionsController < Devise::SessionsController
    # return auth token once user is authenticated
  def create
    if !current_user
      email = params["email"]
      password = params["password"]
      if email && password
        login_hash = User.handle_login(email, password)
        if login_hash
          response.set_header('Authorization', login_hash[:token])
          render json: {message: "Authorized"}
        else
          render json: {error: 'Incorrect email or password'}, status: 422  
        end
      else
        render json: {error: 'Specify email address and password'}, status: 422
      end
    else
      render json: { error: "User already logged in" }, status: 200
    end
  end
end