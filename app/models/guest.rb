class Guest < ActiveRecord::Base
  
  attr_accessible :email, :first_name, :invite_type, :last_name, :family_id, :rsvp
  belongs_to :family
end
