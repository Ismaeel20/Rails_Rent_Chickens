class ChickensController < ApplicationController
  def new
    @chicken = Chicken.find(params[:chicken_id])
    @booking = Booking.new
  end

  def index
    @chickens = Chicken.all
  end

  def my_chickens
    @chickens = Chicken.where(user: current_user)
  end

  def show
    @chicken = Chicken.find(params[:id])
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.user = current_user
    @chicken.save
    redirect_to chicken_path(@chicken)
  end

  private

  def chicken_params
    params.require(:chicken).permit(:breed, :description, :price, :photo)
  end
end
