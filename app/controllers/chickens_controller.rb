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
      @chickens = Chicken.all
    end

  end

  def my_chickens
    @chickens = Chicken.where(user: current_user)
  end

  def show
    @chicken = Chicken.find(params[:id])
    @booking = Booking.new
    @chickens = Chicken.where(user: current_user)
  end

  def edit

    @chicken = Chicken.find(params[:id])
  end

  def update
    @chicken = Chicken.find(params[:id])
    if @chicken.update(chicken_params)
      redirect_to chicken_path(@chicken)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.user = current_user
    @chicken.save
    redirect_to chicken_path(@chicken)
  end

  def destroy
    @chicken = Chicken.find(params[:id])
    @chicken.destroy
    redirect_to chicken_path status: :see_other
  end

  private

  def chicken_params
    params.require(:chicken).permit(:breed, :description, :price, :photo)
  end
end
