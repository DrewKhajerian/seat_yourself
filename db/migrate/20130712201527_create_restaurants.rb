class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :price_range
      t.text :description
      t.references :menu
      t.references :category

      t.timestamps
    end
  end
end
