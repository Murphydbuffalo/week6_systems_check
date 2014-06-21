class ReviewsController < ApplicationController
  def index
  	#@restaurant = Restaurant.find(params[:id])
    #@reviews = @resaturant.reviews.order(:created_at)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@review = Review.new
  end

  def create
  	@review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
  	if @review.save 
  	  redirect_to root_path
  	else
  	  flash[:notice] = "Something went wrong!" 
  	  render new_restaurant_review_path
  	end
  end

  private

  def review_params
  	params.require(:review).permit(:rating, :body)
  end
end