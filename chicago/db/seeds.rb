Place.delete_all

[{:title => "SHEDD AQUARIUM", :photo_url => "http://media.timeout.com/images/100896843/750/422/image.jpg", :admission_price => 1000, :description => "Description: SHEDD AQUARIUM"},
{:title => "Chicago History Museum", :photo_url => "http://media.timeout.com/images/100892339/750/422/image.jpg", :admission_price => 1400, :description => "Description: History Museum"},
{:title => "Adler Planetarium", :photo_url => "http://media.timeout.com/images/100892289/750/422/image.jpg", :admission_price => 1200, :description => "Description: Adler Planetarium"},
{:title => "National Museum of Mexican Art", :photo_url => "http://media.timeout.com/images/100921109/750/422/image.jpg", :admission_price => 0, :description => "Description: National Museum of Mexican Art"},
{:title => "The Peggy Notebaert Nature Museum", :photo_url => "http://media.timeout.com/images/100892427/750/422/image.jpg", :admission_price => 900, :description => "Description: The Peggy Notebaert Nature Museum"}
].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo_url = place_hash[:photo_url]
  p.admission_price = place_hash[:admission_price]
  p.description = place_hash[:description]
  p.save

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
