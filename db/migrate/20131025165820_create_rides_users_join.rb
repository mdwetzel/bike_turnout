class CreateRidesUsersJoin < ActiveRecord::Migration
  def change
    create_table :rides_users, id: false do |t|
      t.column 'ride_id', :integer
      t.column 'user_id', :integer
    end
  end
end
