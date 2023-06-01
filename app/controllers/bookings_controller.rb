class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(booking_params)
    @chicken = Chicken.find(params[:chicken_id])
    @booking.chicken = @chicken
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      @booking = Booking.new
      render 'chickens/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
