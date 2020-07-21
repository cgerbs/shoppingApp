# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.delete_all

Player.create!(name: 'Nate Shipley',
description:
  %{
    Shipley was a football player at Cal Poly and listed as a lock, but his build and his experience might make him a better prop. When he embraced rugby he went to New Zealand to hone his skills. He’s big, very powerful, and knows what it takes to be very serious about a sport. He’s still raw, but the raw materials are good. 
  },
  image: 'example_player.png',
  rating: 4.2)
# . . . 
Player.create!(name: 'Casey Renaud',
  description:
    %{
      Renaud is 6-8 and has a long and very successful career at Kutztown. He’s mature and intelligent and could be a massive find. 
    },
    image: 'example_player.png',
    rating: 3.5)
    # . . .
Player.create!(name: 'Aaron Matthews',
  description:
    %{
      Matthews, who was still coming back from a knee injury this spring, can play anywhere in the backline and can defend, run, pass, and step out of trouble. 
    },
    image: 'example_player.png',
    rating: 5.2)