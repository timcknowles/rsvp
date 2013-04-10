class RemoveRspAndDietaryFromFamily < ActiveRecord::Migration
  remove_column :families, :rsvp
  remove_column :families, :dietary
  
end
