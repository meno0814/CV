require 'rails_helper'

RSpec.describe "Sesssions", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/sesssions/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/sesssions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/sesssions/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
