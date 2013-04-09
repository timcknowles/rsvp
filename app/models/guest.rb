class Guest < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :first_name, :invite_type, :last_name, :family_id, :login_code, :password, :password_confirmation
  belongs_to :family
end
