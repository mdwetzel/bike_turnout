class AddFieldsToGroupRides < ActiveRecord::Migration
  def change
    add_column :group_rides, :duration, :string
  end
end
