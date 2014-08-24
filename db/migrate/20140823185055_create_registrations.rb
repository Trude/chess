class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :email
      t.boolean :want_to_play

      t.timestamps
    end
  end
end
