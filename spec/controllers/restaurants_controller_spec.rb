require 'spec_helper'

describe RestaurantsController do
  let(:restaurant) { Fabricate(:restaurant) }
  let(:owner) { Fabricate(:owner) }
  let(:user) { Fabricate(:user) }

  describe "GET index" do
    before do 
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "sets @restaurants" do
      expect(assigns(:restaurants)).to eq([restaurant])
    end

    it "renders the index template" do 
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "sets @restaurant variable" do 
      get :show, id: restaurant.id
      expect(assigns(:restaurant)).to eq(restaurant)
    end
  end

  describe "GET #new" do
    before do
      session[:user_id] = user.id
      session[:owner_id] = owner.id
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

  # describe "GET #create" do
  #   context "with valid params" do 
  #     before do 
  #       post :create, restaurant: Fabricate.attributes_for(:restaurant)
  #     end

  #     it "creates a restaurant" do 
  #       expect(Restaurant.count).to eq(1)
  #     end

  #     it "redirects to the restaurant show page" do 
  #       expect(response).to redirect_to '/restaurants/1'
  #     end
  #   end

  #   context "with invalid params" do 
  #     before do 
  #       post :create, restaurant: { name: "Restaurant" }
  #     end

  #     it "does not create a restaurant" do 
  #       expect(Restaurant.count).to eq(0)
  #     end

  #     it "renders the new template" do 
  #       expect(response).to render_template :new
  #     end

  #     it "sets @restaurant" do 
  #       expect(assigns(:restaurant)).to be_instance_of(Restaurant)
  #     end
  #   end
  # end

  # describe "GET #edit" do
  #   it "renders the edit template" do
  #     get :edit, id: restaurant.id
  #     expect(response).to render_template :edit
  #   end

  #   context "with valid params" do 

  #   end

  #   context "with invalid params" do 

  #   end
  # end

  # # describe "GET #update" do
  # #   it "returns http success" do
  # #     get :update
  # #     expect(response).to have_http_status(:success)
  # #   end
  # # end

  # describe "GET #destroy" do
  #   before do 
  #     get :destroy, id: restaurant.id 
  #   end

  #   it "deletes a restaurant" do 
  #     expect(Restaurant.count).to eq(0)
  #   end

  #   it "sets the flash message" do 
  #     expect(flash[:success]).to be_present
  #   end

  #   it "redirects to the root path" do 
  #     expect(response).to redirect_to root_path
  #   end
  # end

end













































