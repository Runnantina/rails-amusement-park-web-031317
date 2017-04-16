class AttractionsController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def show
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.save
    redirect_to attraction_path(@attraction) and return
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    @attraction.save
    redirect_to attraction_path(@attraction)
  end

  def go_on_ride
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
    @ride = Ride.new(attraction_id: @attraction.id, user_id: @user.id)
    flash[:message] = @ride.take_ride
    @ride.save
    redirect_to user_path(@user)
  end

  def attraction_params
    params.require(:attraction).permit(:name, :nausea_rating, :happiness_rating, :tickets, :min_height)
  end

end
