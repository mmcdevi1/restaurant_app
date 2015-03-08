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

  describe "GET #new" do
    before do
      get :new
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the new template" do 
      expect(response).to render_template :new
    end

    it "sets the @restaurant variable" do 
      expect(assigns(:restaurant)). to be_instance_of(Restaurant)
    end
  end

  describe "GET #create" do
    context "with valid params" do 
      before do 
        post :create, restaurant: Fabricate.attributes_for(:restaurant)
      end

      it "creates a restaurant" do 
        expect(Restaurant.count).to eq(1)
      end

      it "redirects to the root path" do 
        expect(response).to redirect_to restaurant
      end
    end

    context "with invalid params" do 
      before do 
        post :create, restaurant: { name: "Restaurant" }
      end

      it "does not create a restaurant" do 
        expect(Restaurant.count).to eq(0)
      end

      it "renders the new template" do 
        expect(response).to render_template :new
      end

      it "sets @restaurant" do 
        expect(assigns(:restaurant)).to be_instance_of(Restaurant)
      end
    end
  end

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

