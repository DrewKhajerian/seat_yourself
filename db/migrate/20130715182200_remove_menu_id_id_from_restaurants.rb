class RemoveMenuIdIdFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :menu_id_id
  end

  def down
    add_column :restaurants, :menu_id_id, :references
  end
end
