require 'spec_helper'

describe "GroupRidePages" do
  subject { page }
  
  describe "Index" do
    before { visit group_rides_path }
    
    it { should have_title(full_title("Rides")) }
  end
  
  describe "Edit" do
    before { visit edit_group_ride_path }
  end
end
