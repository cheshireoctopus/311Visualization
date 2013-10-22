# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Complaint.delete_all


complaint_records = HTTParty.get('http://data.cityofnewyork.us/resource/erm2-nwe9.json')



complaint_records.each do |complaint_record|

  new_complaint = Complaint.new

  new_complaint.address = complaint_record['incident_address']
  new_complaint.zip = complaint_record['incident_zip']
  new_complaint.latitude = complaint_record['latitude']
  new_complaint.longitude = complaint_record['longitude']
  new_complaint.descriptor = complaint_record['descriptor']

  unless new_complaint.save
    puts "complaint ignored"
  end

end
