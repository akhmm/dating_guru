class ActivitiesController < ApplicationController
  def index
    if params[:category]
      @activities = Activity.where(category: params[:category]).geocoded
      @markers = @activities.map do |activity|
        {
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { activity: activity })
        }
      end

    else
      @activities = Activity.geocoded
      @markers = @activities.map do |activity|
        {
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { activity: activity })
        }
      end
    # @categories = @activities.pluck(:category)
    # @categories_unique = @categories.uniq
    end
  end


  def show
    @activity = Activity.find(params[:id])
     @markers =
      {
        lat: @activity.latitude,
        lng: @activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity })
      }
    @review = Review.new
  end
end


