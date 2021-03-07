class RegistrationsController < Devise::RegistrationsController
  def create
    if !current_user
      @user = User.new(user_params)
      if @user.save        
        render json: { message: "User created successfully" }, status: 201
      else
        render json: { error: @user.errors }, status: 409
      end
    else
      render json: { error: "User already logged" }, status: 409
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
end