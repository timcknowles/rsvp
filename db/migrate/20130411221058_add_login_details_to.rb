class AddLoginDetailsTo < ActiveRecord::Migration

  add_column :admins, :password_digest, :string
  add_column :admins, :name, :string
  add_column :admins, :email, :string

end


