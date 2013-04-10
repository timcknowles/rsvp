class MovePassworddigestAndLoginToFamily < ActiveRecord::Migration
  remove_column :guests, :password_digest
  remove_column :guests, :login_code
  
end