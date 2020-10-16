class AssignmentsController < ApplicationController
    #helps with ActionController::InvalildAuthenticityToken error status 422
    #error: request with invalid cterf token - Rails built-in protection
    protect_from_forgery with: :null_session
    before_action :set_assignment, only: [:show, :edit, :update, :destroy]#except: [:index, :new, create]
    # skip_before_action :authorized
    def index
        @assignments = Assignment.all
        # json_response(@assignments)
    end

    # NEW /assignments/new
    def new
        @assignment = Assignment.new
    end

    # POST /assignments
    def create
        @assignment = Assignment.create(assignment_params)
        if @assignment.save
            json_response(@assignment, :created)
        else
            json_response(status: 400)
        end
    end

    # GET /assignments/:id
    def show
        json_response(@assignment)
    end

    # PUT /assignments/:id
    def update
        @assignment.update(assignment_params)
        head :no_content
    end

    # DELETE /assignments/:id
    def destroy
        @assignment.destroy
        head :no_content
    end
    
    # GET /assignments/:id/students
    # def show_students
    #     json_response(@assignment.students)
    # end


    private 
        def assignment_params
            params.require(:assignment).permit(:name, :github_url, :status)
        end

        def set_assignment
            @assignment = Assignment.find(params[:id])
        end
end