class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id #acces à l'id de l'user
    @booking.videogame_id = params[:videogame_id]
    # @booking.save
    # redirect_to videogame_bookings_path #ramener dans le dashboard quand on en aura un
  end

  private

  def booking_params
    params.require(:booking).permit(:accepted, :start_time, :end_time)
  end
end
