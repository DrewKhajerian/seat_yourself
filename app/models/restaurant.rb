class Restaurant < ActiveRecord::Base
  attr_accessible :address, :category_id, :description, :menu_id, :name, :phone_number, :price_range

  has_one :category
  has_one :menu
  has_many :reservations
  has_many :users, :through :reservations
end
