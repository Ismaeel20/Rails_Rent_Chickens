class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[id:])
  end

  def new
    @booking = Booking.new
  end

end
