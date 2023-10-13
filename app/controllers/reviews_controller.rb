class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      if @review.restaurant_id.present?
        redirect_to restaurant_path(@review.restaurant)
      else
        redirect_to activity_path(@review.activity)
      end
    else
      if @review.restaurant_id.present?
        render "restaurants/show", restaurant: @review.restaurant
      else
        render "activities/show", activity: @review.activity
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    if @review.restaurant
      redirect_to restaurant_path(@review.restaurant)
    else
      redirect_to activity_path(@review.activity)
    end


  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :activity_id, :restaurant_id)
  end

end


