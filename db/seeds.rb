# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




require 'csv'

Users.delete_all

CSV.rows.each ("#{Rails.root}/lib/data/user.csv")  do |row|
 
  user = User.new 
  user.name = row[:name]
  user.mobile = ""
  user.code = row[:SecureRandom.hex(3)]
  user.password = row[:password]
 
  user.admin = true
  user.save!
end