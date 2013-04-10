class AddDigestAndLogToFamily < ActiveRecord::Migration
  add_column :families, :rsvp, :boolean
  add_column :families, :dietary, :string, default: false
  
end
