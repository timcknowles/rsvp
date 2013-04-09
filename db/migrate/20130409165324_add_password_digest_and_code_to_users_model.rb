class AddPasswordDigestAndCodeToUsersModel < ActiveRecord::Migration
  add_column :guests, :password_digest, :string
  add_column :guests, :login_code, :string
  
end
