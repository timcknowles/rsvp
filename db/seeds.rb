# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.new
admin.email = ENV["ADMIN_1_EMAIL"]
admin.password= ENV["ADMIN_1_PASSWORD"]
admin.save!

admin = Admin.new
admin.email = ENV["ADMIN_2_EMAIL"]
admin.password= ENV["ADMIN_2_PASSWORD"]
admin.save!

require 'csv'
require 'open-uri'
require 'securerandom'

Family.delete_all


file1 = open(URI.parse ("http://skinnersrsvp.s3.amazonaws.com/family.csv"))

CSV.foreach (file1)  do |row|
 
  family = Family.new 
  family.name = row[0]
  family.password = ENV["WEDDING_PASSWORD"]
  family.login_code = SecureRandom.hex(3)
  
  family.save!
end

Guest.delete_all

file2 = open(URI.parse ("http://skinnersrsvp.s3.amazonaws.com/guests.csv"))

CSV.foreach (file2)  do |row|
  guest = Guest.new
  guest.family_id = row[0]
  guest.first_name = row[1]
  guest.last_name = row[2]
  guest.invite_type = row[3]

  guest.save!

end


  

