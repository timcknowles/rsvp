# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




require 'csv'

#Users.delete_all

CSV.foreach ("#{Rails.root}/lib/data/family.csv")  do |row|
 
  family = Family.new 
  family.name = row[:name]
  family.login_code = row[:login_code]
  family.password = row[:password]
 
  
  family.save!
end

#:SecureRandom.hex(3)