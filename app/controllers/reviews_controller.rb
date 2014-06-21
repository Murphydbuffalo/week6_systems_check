class ReviewsController < ApplicationController
  def index
  	@reviews = review.order(:created_at)
  end

  def new
  	@review = review.new
  end

  def create
  	@review = review.new(review_params)
    @review.restaurant = Restaurant.find(params[:id])
  	if @review.save 
  	  redirect_to root_path
  	else
  	  flash[:notice] = "Something went wrong!" 
  	  render new_restaurant_review_path
  	end
  end

  private

  def review_params
  	params.require(:review).permit(:rating)
  end
end