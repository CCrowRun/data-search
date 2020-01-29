require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe "Search homepage" do
    it "should open the main page" do
      get :index

      expect(response).to have_http_status(:success)
    end

    it "should submit search for Organization ID" do
      get :org_search, params: { name: "Enhaze" }

      puts response_body

      expect(response).to have_http_status :success
    end
    
    it "should submit search for Organization ID" do

      get :org_search, params: { _id: 1 }

      expect(response).to have_http_status :success
    end
    def response_body
      JSON.parse(response.body)
    end
  end
end
