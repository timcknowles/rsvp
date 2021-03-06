class Guest < ActiveRecord::Base
  
  attr_accessible :email, :first_name, :invite_type, :last_name, :family_id, :rsvp, :dietary, :vegetarian
  belongs_to :family

  def name
    "#{first_name} #{last_name}"
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << ["first name", "last name", "email", "rsvp"]
      all.each do |guest|
        csv << [guest.first_name, guest.last_name, guest.email, guest.rsvp]
      end
    end
  end



end
