class AddTitleToGroupRides < ActiveRecord::Migration
  def change
    add_column :group_rides, :title, :string
  end
end
