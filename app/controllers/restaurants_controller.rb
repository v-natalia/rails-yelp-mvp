class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def home

  end

  def show # GET /restaurants/:id
  end

  def create # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    redirect_to restaurants_path
    else
      render :new
    end
  end

  def new # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def index # GET /restaurants
    @restaurants = Restaurant.all
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
