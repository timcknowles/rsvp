class Family < ActiveRecord::Base

  has_secure_password
  attr_accessible :name, :login_code, :password, :password_confirmation, :guests_attributes
  has_many :guests, :dependent => :destroy
  
  accepts_nested_attributes_for :guests, allow_destroy: false  

end

