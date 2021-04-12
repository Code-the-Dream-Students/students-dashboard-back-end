require 'rails_helper'
RSpec.describe "Courses", type: :request do
  describe "GET /courses" do
    it "works! (now write some real specs)" do
      get courses_path
      expect(response).to have_http_status(200)
    end
  end
      describe "PUT courses#update" do
        it 'update courses with valid attributes' do
            user = FactoryBot.create(:user)
            course = FactoryBot.create(:course) 
            sign_in(user)
            
            # course_params = {
            # course_name: 'updcourse',
            # description: 'update course'}}
          put course_path(course), params: {course: {name: "update course", description: "update course"}}

          # :params => course_params.to_json

          # , :headers => { "Content-Type": "application/json"}
          #post '/api/v1/course', :params => course_params.to_json, :headers => { Authorization: @token }
          
          json = JSON.parse(response.body)
          expect(response).to have_http_status(200)
          expect(json["message"]).to eq("Course updated") 
          expect(json["course"]["name"]).to eq("update course") 
          byebug

        end
      end

end
