class RegistrationsController < Devise::RegistrationsController

  def create
    if authenticate_cookie
      @user = User.new(user_params)
      if @user.save        
        render json: { message: "User created successfully" }, status: 201
      else
        render json: { error: 'Error creating user' }, status: 409
      end
    else
      render json: { error: "Unauthorized" }, status: 409
    end
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

    def auth_header
      request.headers['Authorization']
    end
  
    def authenticate_cookie
      if auth_header
        decoded_token = CoreModules::JsonWebToken.decode(auth_header)
        if decoded_token
          user = User.find_by(id: decoded_token[:user_id])
        end
        if user then return true else return false end
      end
    end
end