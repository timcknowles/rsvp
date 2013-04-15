class RemoveDefaultFFromDietaryAddNoneAndVegOption < ActiveRecord::Migration
  remove_column :guests, :dietary
  add_column :guests, :vegetarian, :boolean, :default => false
  add_column :guests, :dietary, :string

end
