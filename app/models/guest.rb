class Guest < ActiveRecord::Base
  
  attr_accessible :email, :first_name, :invite_type, :last_name, :family_id, :rsvp, :dietary
  belongs_to :family

  def name
    "#{first_name} #{last_name}"
  end

end
