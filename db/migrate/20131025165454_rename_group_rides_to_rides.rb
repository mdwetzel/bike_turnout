class RenameGroupRidesToRides < ActiveRecord::Migration
  def change
    rename_table :rides, :rides
  end
end
