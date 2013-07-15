class RemoveUserIdIdFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :user_id_id
  end

  def down
    add_column :reservations, :user_id_id, :references
  end
end
