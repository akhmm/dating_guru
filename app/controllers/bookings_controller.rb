class BookingsController < ApplicationController
  before_action :find_booking, only: [:show,:destroy,:update]

  def index
    @bookings = Booking.all
  end


  def show
    @booking = Booking.find(params[:id])

    @markers = [ @booking.restaurant, @booking.activity].map do |thing|
      next if thing.nil?
      {
        lat: thing.latitude,
        lng: thing.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { thing: thing })
      }
    end
    @markers.reject!(&:nil?)
  end

  def restaurant_redirect_booking
    @booking = Booking.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking.restaurant = @restaurant
    @booking.user = current_user
    @booking.save
    redirect_to activities_path
  end
  def activity_redirect_booking
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    @booking.save
    redirect_to restaurants_path
  end

  def add_restaurant
    booking = Booking.find(params[:booking_id])
    restaurant = Restaurant.find(params[:restaurant_id])
    booking.update(restaurant_id: restaurant.id)
    redirect_to bookings_path
  end

  def add_activity
    booking = Booking.find(params[:booking_id])
    activity = Activity.find(params[:activity_id])
    booking.update(activity_id: activity.id)
    redirect_to bookings_path
  end

  def update
    @booking.update(confirmed: true, date: params[:booking][:date])
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
