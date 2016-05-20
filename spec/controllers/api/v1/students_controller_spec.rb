require "rails_helper"

RSpec.describe Api::V1::StudentsController, :type => :controller do
  describe "GET #index" do
    before(:each) do
      4.times { FactoryGirl.create :student } 
    end
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "returns 4 records from the database" do
      get :index
      expect(json_response[:students]).to have(4).items
    end
  end

end
