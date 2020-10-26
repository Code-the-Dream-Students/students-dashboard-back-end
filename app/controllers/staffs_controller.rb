class StaffsController < ApplicationController
    before_action :set_staff, only: [:show, :update, :destroy]
  
    # GET /staffs
    def index
      @staffs = Staff.all
      json_response(@staffs)
    end
  
    # POST /staffs
    def create
      @staff = Staff.create!(student_params)
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
      # whitelist params
      params.permit(:first_name, :last_name, :title)
    end
  
    def set_staff
      @staff = Staff.find(params[:id])
    end
end
