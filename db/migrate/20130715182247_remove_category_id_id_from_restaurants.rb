class RemoveCategoryIdIdFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :category_id_id
  end

  def down
    add_column :restaurants, :category_id_id, :references
  end
end
