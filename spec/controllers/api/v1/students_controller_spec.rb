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

  describe "POST #create" do

    it "responds successfully with an HTTP 201 status code" do
      post :create, { student: { name: "Abraham" } }
      expect(response).to be_success
      expect(response).to have_http_status(201)
    end

    it "responds with the student in json format" do
      post :create, { student: { name: "Abraham" } }
      expect(json_response[:student][:name]).to eql "Abraham"
    end
  end

  describe "PUT/PATCH #update" do

    it "responds with the updated json version of the student" do
      student = FactoryGirl.create :student, name: "Lorena"
      patch :update, { id: student.id, student: { name: "Yolanda" } }
      expect(json_response[:student][:name]).to eql "Yolanda"
    end
  end

end
