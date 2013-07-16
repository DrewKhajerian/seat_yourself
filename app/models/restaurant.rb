class Restaurant < ActiveRecord::Base
  attr_accessible :address, :category_id, :description, :name, :phone_number, :price_range, :user_id

  # acts_as_taggable_on :tags

  has_one :category
  has_many :reservations
  has_many :users, :through => :reservations
  has_one :user, :as => :owner
end
