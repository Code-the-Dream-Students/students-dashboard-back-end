class StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy, :show_students]#except: [:index, :new, create]

  def index
    @staffs = Staff.all
    json_response(@staffs)
  end

  # POST /staff
  def create
    @staff = Staff.create!(staff_params)
    json_response(@staff, :created)
  end

  # GET /staffs/:id
  def show
      json_response(@staff)
  end

  # PUT /staffs/:id
  def update
      @staff.update(staff_params)
      head :no_content
  end

  # DELETE /staffs/:id
  def destroy
      @staff.destroy
      head :no_content
  end


  private 
      def staff_params
          params.require(:staff).permit(:user_id, :first_name, :last_name, :title)
      end

      def set_staff
          @staff = Staff.find(params[:id])
      end
end
  