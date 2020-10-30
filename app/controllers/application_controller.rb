class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    include Response
    include ExceptionHandler

    # called before every action on controllers
  # before_action :authorize_request
  before_action :authenticate_user
  attr_reader :current_user

  private

  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
  def authenticate_user
    jwt = cookies.signed[:jwt]
    render json: {message: 'Please Login - from authenticate_user'}, status: :unauthorized unless jwt
    # decode_jwt(jwt)
  end
end
