class AddWantToBeContactedToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :want_to_be_contacted, :boolean
  end
end
