descriptionOne = "Anchoring the aquatic offerings at this 75-year-old institution are enduring favorites 
such as piranhas, frogs and snakes of the Amazon; rays, turtles and moray eel of the Caribbean; 
frightening predator sharks and, the most storied of them all, a 100-plus-year-old Australian 
lungfish believed to be the longest-living fish in any aquarium in the world. A 2009 rehab of the 
Oceanarium gave Shedd a lifelike river and tide-pool, a reworked otter habitat, and an attempt to 
revamp its daily mammal presentations with choreography."
descriptionTwo = "Not so long ago this vibrant museum was the stodgy ol' Chicago Historical Society, 
which let you cull through thousands of archived photographs and curio. Well, that library still 
exists, but joining it are several permanent and temporary exhibits, the largest of which is 
\"Chicago: Crossroads of America,\" a treasure trove of historical objects, including a chunk of the 
original Fort Dearborn. Other exhibits include “Sensing Chicago” (kids swarm around the giant Chicago dog) 
and revolving displays showing off one of the world's largest costume collections."
descriptionThree = "Though it’s staffed by world-class researchers at the forefront of their field, 
the museum’s real draw will always be the virtual-reality trips through time and space in the Sky 
Theater, which—thanks to a 2011 rehab—features the \"highest resolution and quality possible.\" Themes 
usually center around the known and unknown universe and how humans have engaged with it throughout 
history."
descriptionFour = "The largest Latino cultural organization in the U.S. is located in Pilsen. Visit 
the museum and you'll find a 6,000-piece permanent collection, rotating exhibits, performing-arts 
showcases and educational programming that represents an illustrious Mexican culture."
descriptionFive = "From prairie and river ecosystems to the biology of Ice Age–mammals, nature and 
its conservation, the focus at this Lincoln Park museum situated alongside a lagoon is vast and 
varied. Hands-on interactive displays on marsh and river ecosystems engage kids, while the thousand 
fluttering beauties of the 2,700-square-foot Judy Istock Butterfly Haven appeal to all ages."

Place.delete_all

[{:title => "SHEDD AQUARIUM", :photo_url => "http://media.timeout.com/images/100896843/750/422/image.jpg", :admission_price => 1000, :description => descriptionOne},
{:title => "Chicago History Museum", :photo_url => "http://media.timeout.com/images/100892339/750/422/image.jpg", :admission_price => 1400, :description => descriptionTwo},
{:title => "Adler Planetarium", :photo_url => "http://media.timeout.com/images/100892289/750/422/image.jpg", :admission_price => 1200, :description => descriptionThree},
{:title => "National Museum of Mexican Art", :photo_url => "http://media.timeout.com/images/100921109/750/422/image.jpg", :admission_price => 0, :description => descriptionFour},
{:title => "The Peggy Notebaert Nature Museum", :photo_url => "http://media.timeout.com/images/100892427/750/422/image.jpg", :admission_price => 900, :description => descriptionFive}
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
