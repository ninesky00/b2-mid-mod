require 'rails_helper'

RSpec.describe "Studios", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/studios/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/studios/show"
      expect(response).to have_http_status(:success)
    end
  end

end
