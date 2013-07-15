class AddRestaurantToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :restaurant, :integer
  end
end
