# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




require 'csv'
require 'securerandom'

Family.delete_all

CSV.foreach ("#{Rails.root}/lib/data/family.csv")  do |row|
 
  family = Family.new 
  family.name = row[0]
  family.password = "wedding"
  family.login_code = SecureRandom.hex(3)
  
  family.save!
end

Guest.delete_all

CSV.foreach ("#{Rails.root}/lib/data/guests.csv")  do |row|
  guest = Guest.new
  guest.family_id = row[0]
  guest.first_name = row[1]
  guest.last_name = row[2]
  guest.invite_type = row[3]

  guest.save!

end


  

