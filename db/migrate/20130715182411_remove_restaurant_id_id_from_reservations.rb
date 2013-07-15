class RemoveRestaurantIdIdFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :restaurant_id_id
  end

  def down
    add_column :reservations, :restaurant_id_id, :references
  end
end
