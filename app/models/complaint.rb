class Complaint < ActiveRecord::Base
  attr_accessible :address, :descriptor, :latitude, :longitude, :zip
end
