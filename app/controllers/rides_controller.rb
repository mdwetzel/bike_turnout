class RidesController < ApplicationController
  def index
    @upcoming_rides = Ride.upcoming_rides
    @past_rides   = Ride.past_rides
    @ride   = Ride.new
  end

  def new
    @ride = Ride.new
  end

  def edit
  end

  def show
  end
  
  def create
    @ride = Ride.new(ride_params)
    @upcoming_rides = Ride.upcoming_rides
    @past_rides   = Ride.past_rides
    
    if @ride.save
      flash[:success] = "Successfully created ride!"
      redirect_to @ride
    else
      render  :index
    end
  end
  
  private 
  
  def ride_params
    params.require(:ride).permit(:description, :duration, :title, :starts_at, :leader_id)
  end
end
