require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe "Search homepage" do
    it "should open the main page" do
      get :index

      expect(response).to have_http_status(:success)
    end
  end
end
