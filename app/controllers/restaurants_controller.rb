class RestaurantsController < ApplicationController
  def index
    if params[:category]
      @restaurants = Restaurant.where(category: params[:category]).geocoded
      @markers = @restaurants.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
        }
      end

    else
      @restaurants = Restaurant.geocoded

      @markers = @restaurants.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
        }
      end
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @markers =
      {
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
      }
    @review = Review.new
  end
end
