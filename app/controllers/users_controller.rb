# app/controllers/users_controller.rb
class UsersController < ApplicationController
    # GET /users
  before_action :current_user, only: [:show_current_user]

  def index
    @users = User.all
    render json: @users
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      json_response(message: Message.account_updated)
    else
      json_response(message: "could not update.")
    end
  end

  def show_current_user
    # token = params[:token]
    # decoded_token = JsonWebToken.decode(token)

    # if decoded_token
    #   user = User.find_by(id: decoded_token[:user_id])
    #   json_response(user, :ok, user_options)
    # end
      render json: @user, status: :ok, include: user_options 
  end

  private

    def user_params
      params.require(:user).permit(
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

    def current_user
      if auth_header
        decoded_token = CoreModules::JsonWebToken.decode(auth_header)
        if decoded_token
          @user = User.find_by(id: decoded_token[:user_id])
        end
        if @user then return @user else return false end
      end
    end

    def user_options
      ['user', 'student', 'staff', 'student.student_course.course', 'student.student_weekly_progresses.registered_mentor_sessions', 'student.student_weekly_progresses.week', 'student.student_weekly_progresses.registered_mentor_sessions.mentor_course', 'student.student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor', 'student.student_weekly_progresses.registered_mentor_sessions.mentor_course.mentor.user', 'student.student_weekly_progresses.week.course', 'student.student_weekly_progresses.week.unit', 'student.student_weekly_progresses.week.lesson']
    end
end
