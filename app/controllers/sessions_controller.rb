# app/controllers/authentication_controller.rb
class SessionsController < Devise::SessionsController
  require 'net/http'
  require 'httparty'
  require 'cgi'

  def create
    if !current_user
      email = params["email"]
      password = params["password"]
      if email && password
        login_hash = User.handle_login(email, password)
        if login_hash
          @user = User.find_by_email(email)
          response.set_header('Authorization', login_hash[:token])
          render json: @user, status: :ok, include: user_options
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

  def create_github
    uri1 = URI('https://github.com/login/oauth/access_token')

    p Rails.application.credentials.fetch(:client_id)
    p Rails.application.credentials.fetch(:client_secret)

    response = Net::HTTP.post_form(uri1, 'client_id' => Rails.application.credentials.fetch(:client_id), 'client_secret' => Rails.application.credentials.fetch(:client_secret), 'code' => params[:code])
    data = CGI::parse(response.body)
    p data
    token = data.values[0]
    p token[0]
    headers = {
        "Authorization" => "token #{token[0]}",
        "User-Agent" => "jgabitto"
    }
    # info = HTTParty.get('https://api.github.com/user', :headers => headers)
    # p info
    email = HTTParty.get('https://api.github.com/user/emails', :headers => headers)
    p email

    redirect_to "http://localhost:3000/"
  end

  private
    def user_options
      [
        'user', 
        'student', 
        'staff', 
        'student.student_course.course', 
        'student.student_weekly_progresses.registered_mentor_sessions', 
        'student.student_weekly_progresses.week', 
        'student.student_weekly_progresses.registered_mentor_sessions.mentor_course', 
        'student.student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor', 
        'student.student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor.user', 
        'student.student_weekly_progresses.week.course', 
        'student.student_weekly_progresses.week.unit', 
        'student.student_weekly_progresses.week.lesson'
      ]
    end
end