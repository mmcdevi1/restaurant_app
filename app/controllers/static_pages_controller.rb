class StaticPagesController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

end
