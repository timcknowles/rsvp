class AddFamilyIdToGuest < ActiveRecord::Migration
  add_column :guests, :family_id, :integer 
end
