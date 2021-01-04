require 'rails_helper'

RSpec.describe "Actors", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/actors/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/actors/show"
      expect(response).to have_http_status(:success)
    end
  end

end
