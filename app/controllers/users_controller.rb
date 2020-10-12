class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    json_response(@users)
  end

  def new
    @user = User.new
  end

  def create   
    @user = User.create!(user_params)
    json_response(@user, :created)
    session[:user_id] = @user.id   
    redirect_to '/welcome'
  end

  # GET /todos/:id
  def show
    json_response(@user)
  end

  # PUT /todos/:id
  def update
    @user.update(user_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private
  
    def user_params
      # whitelist params
      params.permit(:username, :password, :email)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
