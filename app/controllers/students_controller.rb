class StudentsController < ApplicationController
  def index
    @students = Student.all
    @users = User.all
  end
end
