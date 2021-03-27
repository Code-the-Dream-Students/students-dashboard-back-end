class TlessonsController < ApplicationController
    # skip_before_action :authenticate_cookie
    before_action :set_tlesson, only: [:show, :update, :destroy]

    def index
      @tlessons = Tlesson.all
      render json: @tlessons, include: ['tunits', 'tassignments', 'tmaterials']
    end
  
    def search
      @tlessons = params[:name] ? Tlesson.where("name ILIKE ?", "%#{params[:name]}%") :           
      render json: @tlessons, include: ['tunits', 'tassignments', 'tmaterials']
    end
  
    def show
      render json: @tlesson, include: ['tunits', 'tassignments', 'tmaterials']
    end
  
    def create
        @tlesson = Tlesson.create(tlesson_params)
        if @tlesson
          render json: { message: "Lesson template successfully created", tlesson: @tlesson }
        else
          error_json
        end
    end
  
    def update
      if @tlesson.update(tlesson_params)
        render json: { message: "Lesson template successfully updated", tlesson: @tlesson }
      else
        error_json
      end
    end
  
    def destroy
      if @tlesson.destroy
        render json: { message: "Lesson template successfully deleted", tlesson: @tlesson }
      else
        error_json
      end
    end
  
    private
  
      def tlesson_params
        params.require(:tlesson).permit(:name, :duration, :learning_objectives)
      end
  
      def set_tlesson
        @tlesson = Tlesson.find(params[:id])
      end
  
      def error_json
        render json: { error: "Not Found" }, status: 404
      end  
end
