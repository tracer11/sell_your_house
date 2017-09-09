class Listing < ApplicationRecord
  geocoded_by :address
  after_validation :geocode 
  has_many :pictures, :dependent => :destroy
end
