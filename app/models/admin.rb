class Admin < ActiveRecord::Base

has_secure_password

attr_accessible :email, :password

has_many :guests
has_many :families
end
