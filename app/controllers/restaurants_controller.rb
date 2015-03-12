class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  layout :layout

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:success] = "Your restaurant has been uploaded."
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      flash[:success] = "Restaurant updated."
      redirect_to @restaurant
    else
      render 'edit'
    end 
  end

  def destroy
    @restaurant.destroy
    flash[:success] = "Restaurant deleted."
    redirect_to root_path
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, 
                                       :description, 
                                       :address,
                                       :phone_number,
                                       :city,
                                       :state,
                                       :zipcode
                                       )
  end

  def layout
    if params[:action] == 'index'
      "restaurant"
    else
      "application"
    end
  end

  # def anybody_signed_in?
  #   if !signed_in?
  #     redirect_to root_path
  #   end
  # end

end


























