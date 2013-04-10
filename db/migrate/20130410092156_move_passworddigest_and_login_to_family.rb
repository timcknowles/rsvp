class MovePassworddigestAndLoginToFamily < ActiveRecord::Migration
  remove_column :guests, :password_digest, :string
  remove_column :guests, :login_code, :string
  
end