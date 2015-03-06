class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  layout :layout
  
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def layout
    "restaurant"
  end

end
