description_one = "Anchoring the aquatic offerings at this 75-year-old institution are enduring favorites 
such as piranhas, frogs and snakes of the Amazon; rays, turtles and moray eel of the Caribbean; 
frightening predator sharks and, the most storied of them all, a 100-plus-year-old Australian 
lungfish believed to be the longest-living fish in any aquarium in the world. A 2009 rehab of the 
Oceanarium gave Shedd a lifelike river and tide-pool, a reworked otter habitat, and an attempt to 
revamp its daily mammal presentations with choreography."
description_two = "Not so long ago this vibrant museum was the stodgy ol' Chicago Historical Society, 
which let you cull through thousands of archived photographs and curio. Well, that library still 
exists, but joining it are several permanent and temporary exhibits, the largest of which is 
\"Chicago: Crossroads of America,\" a treasure trove of historical objects, including a chunk of the 
original Fort Dearborn. Other exhibits include “Sensing Chicago” (kids swarm around the giant Chicago dog) 
and revolving displays showing off one of the world's largest costume collections."
description_three = "Though it’s staffed by world-class researchers at the forefront of their field, 
the museum’s real draw will always be the virtual-reality trips through time and space in the Sky 
Theater, which—thanks to a 2011 rehab—features the \"highest resolution and quality possible.\" Themes 
usually center around the known and unknown universe and how humans have engaged with it throughout 
history."
description_four = "The largest Latino cultural organization in the U.S. is located in Pilsen. Visit 
the museum and you'll find a 6,000-piece permanent collection, rotating exhibits, performing-arts 
showcases and educational programming that represents an illustrious Mexican culture."
description_five = "From prairie and river ecosystems to the biology of Ice Age–mammals, nature and 
its conservation, the focus at this Lincoln Park museum situated alongside a lagoon is vast and 
varied. Hands-on interactive displays on marsh and river ecosystems engage kids, while the thousand 
fluttering beauties of the 2,700-square-foot Judy Istock Butterfly Haven appeal to all ages."
description_six = "If you’re into exhibits loaded with interactive bells and whistles, this expansive 
Hyde Park locale is your ticket. The museum’s focus is broad, with permanent displays that include the 
opular, health-focused new \"You! The Experience\" gallery, the new whiz-bang \"Science Storms,\" plus the 
old faves: a restored U-505 German submarine, a simulated coal mine and a glass-covered hatchery of 
chicks."
description_seven = "This tourist hot spot features shops, eateries, an IMAX cinema and a bevy of 
sightseeing boat tours. Pier Park is home to a 150-foot-high Ferris wheel, plus an old-fashioned swing 
ide and 18-hole mini-golf course. You'll also find the Chicago Children's Museum and a rotating roster 
f live entertainment on the Family Pavilion Stage. Most offerings may not turn locals on, but the 
seasonsal events, indoor activities and great people-watching provide plenty of entertainment, no 
matter what the weather."
description_eight = "Formerly known as the John Hancock Observatory, 360 Chicago offers dining, sights 
and an interactive tour far above the city streets. From 1,000 feet up on the 94th floor, you can see up 
 55 miles out and four states—you'll feel as if you're along for the ride as you watch airplanes whiz 
 by. A recent addition is the Tilt attraction, which allows visitors to step onto an enclosed platform 
 that extends from the building at a 30 degree angle."
description_nine = "See some 1,200 animals, from apes to zebras, at the oldest and one of only a few 
free zoos left in the country. It is small, only 35 acres, but attractions like the Kovler Lion House 
and the Regenstein Center for African Apes pack a big punch. The newest feature: A 2010 rehab 
transformed the pond adjacent to Café Brauer into the Nature Boardwalk harboring Illinois wildlife."
description_ten = "This 24.5-acre park features Frank Gehry's Pritzker Pavilion and serpentine bridge; 
sculptor Anish Kapoor's 110-ton Cloud Gate (a.k.a. “The Bean”); and Jaume Plensa's Crown Fountain, with 
s ever-changing array of locals' faces spewing water very five minutes in the summer months. The Lurie 
Garden wows with year-round flower displays and monthly garden walks."

Place.delete_all

[{:title => "SHEDD AQUARIUM", :photo_url => "http://media.timeout.com/images/100896843/750/422/image.jpg", :admission_price => 1000, :description => description_one},
{:title => "Chicago History Museum", :photo_url => "http://media.timeout.com/images/100892339/750/422/image.jpg", :admission_price => 1400, :description => description_two},
{:title => "Adler Planetarium", :photo_url => "http://media.timeout.com/images/100892289/750/422/image.jpg", :admission_price => 1200, :description => description_three},
{:title => "National Museum of Mexican Art", :photo_url => "http://media.timeout.com/images/100921109/750/422/image.jpg", :admission_price => 0, :description => description_four},
{:title => "The Peggy Notebaert Nature Museum", :photo_url => "http://media.timeout.com/images/100892427/750/422/image.jpg", :admission_price => 900, :description => description_five},
{:title => "Museum of Science and Industry", :photo_url => "http://media.timeout.com/images/101454903/750/422/image.jpg", :admission_price => 1500, :description => description_six},
{:title => "Navy Pier", :photo_url => "http://media.timeout.com/images/100905037/750/422/image.jpg", :admission_price => 0, :description => description_seven},
{:title => "360 Chicago", :photo_url => "http://media.timeout.com/images/101573551/750/422/image.jpg", :admission_price => 1900, :description => description_eight},
{:title => "Lincoln Park Zoo", :photo_url => "http://media.timeout.com/images/100892541/750/422/image.jpg", :admission_price => 0, :description => description_nine},
{:title => "Millennium Park", :photo_url => "http://media.timeout.com/images/101151259/750/422/image.jpg", :admission_price => 0, :description => description_ten}
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
