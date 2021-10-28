require 'rails_helper'

RSpec.describe "Ingredientes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/ingrediente/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/ingrediente/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/ingrediente/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/ingrediente/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
