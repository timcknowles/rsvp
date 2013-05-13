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

admin = Admin.new
admin.email = ENV["ADMIN_3_EMAIL"]
admin.password= ENV["ADMIN_3_PASSWORD"]
admin.save!

admin = Admin.new
admin.email = ENV["ADMIN_4_EMAIL"]
admin.password= ENV["ADMIN_4_PASSWORD"]
admin.save!

admin = Admin.new
admin.email = ENV["ADMIN_5_EMAIL"]
admin.password= ENV["ADMIN_5_PASSWORD"]
admin.save!

require 'csv'
require 'open-uri'
require 'securerandom'





file1 = open('https://www.dropbox.com/s/l3xao5mw89co567/family.csv')

CSV.foreach(file1) do |row|
  family = Family.find_by_name(row[0]) || Family.new
  family.name = row[0]
  family.password = ENV["WEDDING_PASSWORD"]
  family.login_code = SecureRandom.hex(3)
  family.save!
  end


file2 = open('https://www.dropbox.com/s/6e82lp3mbnb5wk1/guests.csv')

CSV.foreach(file2)  do |row|
  guest = Guest.where(first_name: row[1], last_name: row[2]).first || Guest.new
  guest.family_id = row[0]
  guest.first_name = row[1]
  guest.last_name = row[2]
  guest.invite_type = row[3]
  guest.save!
  end


  

