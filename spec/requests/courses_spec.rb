require 'rails_helper'
require 'token_helper'
RSpec.describe "Courses", type: :request do
  describe "GET /courses" do
    it "works! (now write some real specs)" do
      get courses_path
      expect(response).to have_http_status(200)
    end
  end

  
  # describe "get courses" do
  #   it "renders the :show template" do
  #     customer = FactoryBot.create(:customer)
  #     user = User.create(email: 'test@icloud.com', password: "Pa$$word20", password_confirmation: "Pa$$word20", role: "administrator")
  #     sign_in user
  #     get customer_path(id: customer.id)
  #     expect(response.status).to render_template(:show)
  #   end
  # end
  describe " POST courses#create" do
    it 'create courses with valid attributes' do
      user = FactoryBot.create(:user)
      token = auth_token(user)
      course = FactoryBot.create(:course) 
      # sign_in(user)
      post courses_path(course), params: {course: {name: "create course", description: "create course"}},
      headers: {'Authorization' => token} 
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
      expect(json["message"]).to eq("Course created") 
      expect(json["course"]["name"]).to eq("create course") 
      #byebug
    end
  end 
  describe "PUT courses#update" do
    it 'update courses with valid attributes' do
      user = FactoryBot.create(:user)
      token = auth_token(user)
      course = FactoryBot.create(:course) 
      # sign_in(user)
      put course_path(course), params: {course: {name: "update course", description: "update course"}},
      headers: {'Authorization' => token}
      
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json["message"]).to eq("Course updated") 
      expect(json["course"]["name"]).to eq("update course") 
      #byebug
    end
    describe "Access Control Test" do
      it 'wont update courses without token' do
        user = FactoryBot.create(:user)
        # token = TokenHelper.auth_token(user)
        course = FactoryBot.create(:course) 
        # sign_in(user)
        put course_path(course), params: {course: {name: "update course", description: "update course"}}
        # headers: {'Authorization' => token} 
        json = JSON.parse(response.body)
        expect(response).to have_http_status(401)
      #byebug
      end
    end
  end 
  # private
  #   def auth_token(user)
  #     return CoreModules::JsonWebToken.encode({
  #     user_id: user.id
  #     }, 24.hours.from_now)
  #   end    
end
  # def index
  #   @courses = Course.all
  #   render json: @courses, include: ["cohorts", "units.lessons"]
  # end

  # def search
  #   @courses = params[:name] ? Course.where("name ILIKE ?", "%#{params[:name]}%") :
  #   params[:description] ? Course.where("description ILIKE ?", "%#{params[:description]}%") : []

  #   render json: @courses, include: ["cohorts", "units.lessons"]
  # end

  # def show
  #   if @course
  #     render json: @course, include: ["cohorts", "units.lessons"]
  #   else
  #     error_json
  #   end
  # end
