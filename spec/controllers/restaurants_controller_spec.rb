require 'spec_helper'

describe RestaurantsController do

  describe "GET index" do
    before do 
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "sets @restaurants" do
      restaurant = Fabricate(:restaurant) 
      expect(assigns(:restaurants)).to eq([restaurant])
    end

    it "renders the index template" do 
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "sets @restaurant variable" do 
      restaurant = Fabricate(:restaurant) 
      get :show, id: restaurant.id
      expect(assigns(:restaurant)).to eq(restaurant)
    end
  end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end

