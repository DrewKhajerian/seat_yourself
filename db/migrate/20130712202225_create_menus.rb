class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.text :item_list

      t.timestamps
    end
  end
end
