class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update, :destroy, :show_students]#except: [:index, :new, create]

  def index
    @mentors = Mentor.all
    json_response(@mentors)
  end

  # POST /mentor
  def create
    @mentor = Mentor.create!(mentor_params)
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
          params.require(:mentor).permit(:user_id, :first_name, :last_name, :title)
      end

      def set_mentor
          @mentor = Mentor.find(params[:id])
      end
end
  