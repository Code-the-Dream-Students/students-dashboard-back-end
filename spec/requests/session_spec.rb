require 'rails_helper'
RSpec.describe SessionsController, type: :request do  
    let!(:user) { FactoryBot.create(:user) }
    
    it 'logs the user in' do
    #   json = "{ user: { email: user.email, password: Pa$$word } }"
    #   json = { :application => { :name => "foo", :description => "bar" } }
    #json = { :user => { :name => "foo", :description => "bar" } }
      post "/users/sign_in", params: {user: {email: user.email, password: "Pa$$word"}}
      byebug
      expect(response).to have_http_status(200)
    end 
        # subject { user }
    #context "JSON" do
    # context "when not authorized" do
    #   before do
    #     json = { :application => { :name => "foo", :description => "bar" } }
    #     request.env['CONTENT_TYPE'] = 'application/json'
    #     request.env['RAW_POST_DATA'] = json
    #     #post :create
    #   end   
    # end

end
    # it 'update courses with valid attributes' do
            
        #             course_params = {
        #             course_name: 'updcourse',
        #             description: 'update course'},
        #             headers: {Authorization: @token}, as: :json
        #             # "Content-Type": "application/json" 
            
        #           post '/api/v1/course', :params => course_params.to_json, :headers => { "Content-Type": "application/json"}
        #           #post '/api/v1/course', :params => course_params.to_json, :headers => { Authorization: @token }
                  
        #           json = JSON.parse(response.body)
        #           expect(response).to have_http_status(201)
        #         end
        #       end

