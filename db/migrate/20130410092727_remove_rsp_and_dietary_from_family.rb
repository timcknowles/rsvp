class RemoveRspAndDietaryFromFamily < ActiveRecord::Migration
  remove_column :families, :rsvp, :boolean
  remove_column :families, :dietary, :string, default: false
  
end
