class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def show
    @users = User.all
    json_response(@users)
  end

  def new
    @user = User.new
  end

  def create   
    @user = User.create(params.require(:user).permit(:username, :password, :email))   
    session[:user_id] = @user.id   
    redirect_to '/welcome'
  end
end
