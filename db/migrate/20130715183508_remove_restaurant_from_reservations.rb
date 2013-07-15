class RemoveRestaurantFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :restaurant
  end

  def down
    add_column :reservations, :restaurant, :integer
  end
end
