class Menu < ActiveRecord::Base
  attr_accessible :item_list

  belongs_to :restaurant
end
