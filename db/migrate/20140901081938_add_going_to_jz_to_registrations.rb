class AddGoingToJzToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :goingToJz, :boolean
    remove_column :registrations, :want_to_play
  end
end
