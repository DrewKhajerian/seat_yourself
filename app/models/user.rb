class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :points, :is_owner
  has_secure_password

  validates_presence_of :password, :on => :create 
  validates_presence_of :email

  

  has_many :reservations
  has_many :restaurants


end
