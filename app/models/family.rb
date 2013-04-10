class Family < ActiveRecord::Base
  attr_accessible :name
  has_many :guests
end

