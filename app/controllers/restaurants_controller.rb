class RestaurantsController < ApplicationController
  def index
    @page_number = params[:page].to_i || 0
  	@restaurants = Restaurant.order(:created_at).limit(10).offset(@page_number * 10)
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	if @restaurant.save 
  	  redirect_to root_path
  	else
  	  flash[:notice] = "Something went wrong!" 
  	  render new_restaurant_path
  	end
  end

  private

  def restaurant_params
  	params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :description, :category)
  end
end