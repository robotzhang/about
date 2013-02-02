class User < ActiveRecord::Base
  attr_accessible :email, :password, :name, :password_confirmation
  validates_confirmation_of :password
end
