class Family < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :login_code, :password, :password_confirmation
  has_many :guests
end

