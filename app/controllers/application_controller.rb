class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    include Response
    include ExceptionHandler

    # called before every action on controllers
  # before_action :authorize_request
  before_action :authorize_user
  attr_reader :current_user

  def current_user
    token = cookies.signed[:jwt]
    decoded_token = JsonWebToken.decode(token)
    if decoded_token
      user = User.find_by(id: decoded_token[:user_id])
    end
    if user then return user else return false end
  end

  private

  def authorize_user
    # Check for valid cookie stored jwt token
    jwt = cookies.signed[:jwt]
    # Return user with AuthorizeApiRequest Module
    if jwt
      @current_user = (AuthorizeApiRequest.new(jwt).call)[:user]
    else
      raise(ExceptionHandler::AuthenticationError, Message.unauthorized)
    end
  end
end
