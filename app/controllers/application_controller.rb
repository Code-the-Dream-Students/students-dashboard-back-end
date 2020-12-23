class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    include Response
    include ExceptionHandler

    # called before every action on controllers
  # before_action :authorize_request
  before_action :authorize_user
  attr_reader :current_user

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
