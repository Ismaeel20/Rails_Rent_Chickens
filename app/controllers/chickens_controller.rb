class ChickensController < ApplicationController
  def new
    @chicken = Chicken.new
  end

  def index
    @chickens = Chicken.all
    if params[:query].present?
      sql_query = "breed ILIKE :query OR description ILIKE :query"
      @chickens = Chicken.where(sql_query, query: "%#{params[:query]}%")
    else
      @chcikens = Chicken.all
    end
  end

  def my_chickens
    @chickens = Chicken.where(user: current_user)
  end

  def show
    @chicken = Chicken.find(params[:id])
    @booking = Booking.new
  end

  def edit
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
    params.require(:chicken).permit(:breed, :description, :price)
  end
end
