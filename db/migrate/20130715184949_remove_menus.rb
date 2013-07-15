class RemoveMenus < ActiveRecord::Migration
  def up
  	drop_table :menus
  end

  def down
  end
end
