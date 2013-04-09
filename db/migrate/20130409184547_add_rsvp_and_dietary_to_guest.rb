class AddRsvpAndDietaryToGuest < ActiveRecord::Migration
  add_column :guests, :rsvp, :boolean
  add_column :guests, :dietary, :string, default: false
  
end
