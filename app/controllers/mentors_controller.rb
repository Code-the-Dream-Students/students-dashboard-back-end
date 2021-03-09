class MentorsController < ApplicationController
  skip_before_action :authenticate_cookie

  before_action :set_mentor, only: [:show, :update, :destroy]
  # GET /mentors
  def index
    @mentors = Mentor.all
    json_response(@mentors)
  end

  # POST /mentors
  def create
    @mentor = Mentor.create!(student_params)
    json_response(@mentor, :created)
  end

  # GET /mentors/:id
  def show
    json_response(@mentor)
  end

  # PUT /mentors/:id
  def update
    @mentor.update(mentor_params)
    head :no_content
  end

  # DELETE /mentors/:id
  def destroy
    @mentor.destroy
    head :no_content
  end

  private

  def mentor_params
    # whitelist params
    params.permit(:first_name, :last_name, :title)
  end

  def set_mentor
    @mentor = Mentor.find(params[:id])
  end
end
