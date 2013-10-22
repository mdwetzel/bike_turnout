class GroupRidesController < ApplicationController
  def index
    @upcoming_rides = GroupRide.upcoming_rides
    @past_rides   = GroupRide.past_rides
    @group_ride   = GroupRide.new
  end

  def new
    @group_ride = GroupRide.new
  end

  def edit
  end

  def show
  end
  
  def create
    @group_ride = GroupRide.new(group_ride_params)
    @upcoming_rides = GroupRide.upcoming_rides
    @past_rides   = GroupRide.past_rides
    
    if @group_ride.save
      flash[:success] = "Successfully created ride!"
      redirect_to @group_ride
    else
      render  :index
    end
  end
  
  private 
  
  def group_ride_params
    params.require(:group_ride).permit(:description, :duration, :title, :starts_at, :leader_id)
  end
end
