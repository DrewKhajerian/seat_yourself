class RemoveRetaurantIdIdFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :retaurant_id_id
  end

  def down
    add_column :reservations, :retaurant_id_id, :references
  end
end
