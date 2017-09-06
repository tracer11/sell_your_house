class Listing < ApplicationRecord
  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, if => :address_change
end
