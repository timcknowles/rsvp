class SecondAddDigestToFamily < ActiveRecord::Migration
  add_column :families, :password_digest, :string
  add_column :families, :login_code, :string
  
end