require 'spec_helper'

describe StaticPagesController do 
  let(:restaurant) { Fabricate(:restaurant) }
  
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
end