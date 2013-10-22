class CreateGroupRides < ActiveRecord::Migration
  def change
    create_table :group_rides do |t|
      t.integer :leader_id
      t.text :description
      t.datetime :starts_at

      t.timestamps
    end
  end
end
