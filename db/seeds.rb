class RandomEvent < ActiveRecord::Base

  RandomEvent.create({:bar => "lost 0.10 bitcoins in a untimely sports bet with Travis Crampton.",
                              :coffee_shop => "tipped Ryan the barista too much.",
                              :change_money => -23})
  RandomEvent.create({:bar => "was chased by Andrew's lost & rabies-infested dog that wasn't properly tracked by his app.",
                              :coffee_shop => "got attacked by Andrew's rabies infested dog in the coffee_shop that wasn't properly tracked by his app.",
                              :change_energy => -20})
  RandomEvent.create({:bar => "found half a bottle of Burnetts on the ground and drank it.",
                              :coffee_shop => "tried out the coffee shops' new and unnecessary wine menu.",
                              :change_happiness => 30})
  RandomEvent.create({:bar => "found 0.243 bitcoins in the trash.",
                              :coffee_shop => "stole $56.07 from the tip jar.",
                              :change_money => 56.07})
  RandomEvent.create({:bar => "befriended a homeless man who shared his last drops of alcohol.",
                              :coffee_shop => "snuck in a flask of patron to add to their venti iced half-coffee_shop 2% traditional machiato wet.",
                              :change_happiness => 20})
  RandomEvent.create({:bar => "got a ticket from the Finest for public intoxication and slightly sobered up. Thanks Officer Iman.",
                              :coffee_shop => "got a ticket from the Finest for drunken disorderly conduct and slightly sobered up. Thanks Officer Iman.",
                              :change_happiness => -10, :change_money => -30})
  RandomEvent.create({:bar => "took a nap in the dumpster with Bunker, who could not explain why he was in the dumpster.",
                              :coffee_shop => "took a nap on top of a coffee_shop table with Bunker, who could not explain what he was doing there.",
                              :change_energy => 15, :change_happiness => -15})
  RandomEvent.create({:bar => "got in a barfight with a minor named Jennifer Bell. Lost.",
                              :coffee_shop =>  "got in a fight with a minor called Jennifer Bell after she rudely knocked the coffee out of their hand. Lost.",
                              :change_energy => -10})
  RandomEvent.create({:bar => "puked in the alley outside the bar.",
                              :coffee_shop => "drank 14 espresso shots on an empty stomach. Puked on barista.",
                              :change_happiness => -10})
   RandomEvent.create({:bar => "got egged by Austin Kincaid, standing in a jock-strap atop Big Pink.",
                              :coffee_shop =>  "had their just-purchased and oh-so-fresh egg sandwich stolen by Austin in a bloody confrontation that left both parties exhuasted. But he has the sandwich.",
                              :change_energy => -10})
   RandomEvent.create({:bar => "was assulted, beaten, and left to die by an intoxicated and violent Jason Lane.",
                              :coffee_shop => "accidently knocked their artisan seltzer water palette cleanser on Jason Lane, who smashed his mason jar over their head and left them on the floor crying.",
                              :change_energy => -80})
   RandomEvent.create({:bar => "encountered a nude Carlo de Gregorio, doing the scorpion yoga pose on the sidewalk in front of Powells. Mysteriously sobered up a little.",
                              :coffee_shop => "encountered a nude Carlo de Gregorio, doing the scorpion yoga pose on the sidewalk in front of Powells. Mysteriously sobered up a little.",
                              :change_happiness => -10})
   RandomEvent.create({:bar => "used Iman's Kush app to acquire medical grade marijuana to scent their backpack and attract dilenquent teenagers.",
                              :coffee_shop => "used Iman's Kush app to acquire medical grade marijuana to scent their backpack and attract dilenquent teenagers.",
                              :change_money => -40})
    RandomEvent.create({:bar => "kidnapped by Tyler and taken to his new studio apartment but successfully escaped with an antique Ming dynasty vase.",
                               :coffee_shop => "ran into Tyler, who invited them to his new studio apartment for sleepy-time chamomile tea and then brutally thrown out the 3rd floor window.",
                               :energy => -40})
   RandomEvent.create({:bar => "Kyle"})
end

class Bar < ActiveRecord::Base

  Bar.create({:name => "McMenamins Bagdad Theater and Pub"})
  Bar.create({:name => "Mulligan's Bar and Grill"})
  Bar.create({:name => "Hawthorne Hideaway"})
  Bar.create({:name => "4-2-2 Soccer Bar"})
  Bar.create({:name => "The High Dive"})
  Bar.create({:name => "A Roadside Attraction"})
  Bar.create({:name => "Morrison Street Bar and Grill"})
  Bar.create({:name => "Hungry Tiger"})
  Bar.create({:name => "Burnside Brewing"})
  Bar.create({:name => "Rontoms"})
  Bar.create({:name => "Dante's"})
  Bar.create({:name => "Ground Kontrol"})
  Bar.create({:name => "The Big Legrowlski"})
  Bar.create({:name => "Deschutes Brewery"})
  Bar.create({:name => "McMenamins Crystal"})
  Bar.create({:name => "Rogue Distillery"})
  Bar.create({:name => "McMenamins Mission Theater"})
  Bar.create({:name => "Muu-Muu's"})
  Bar.create({:name => "McMenamins Rams Head"})
  Bar.create({:name => "Home"})

end

class CoffeeShop < ActiveRecord::Base

  CoffeeShop.create({:name => "The Fresh Pot"})
  CoffeeShop.create({:name => "Cup and Saucer"})
  CoffeeShop.create({:name => "Grand Central Bakery"})
  CoffeeShop.create({:name => "Oui Presse"})
  CoffeeShop.create({:name => "Tiny's"})
  CoffeeShop.create({:name => "Good Coffee"})
  CoffeeShop.create({:name => "Rimsky-Korsakoffee House"})
  CoffeeShop.create({:name => "Triumph"})
  CoffeeShop.create({:name => "Grendel's"})
  CoffeeShop.create({:name => "Delicious Donuts"})
  CoffeeShop.create({:name => "Voodoo Doughnuts"})
  CoffeeShop.create({:name => "Starbucks"})
  CoffeeShop.create({:name => "Pearl Bakery"})
  CoffeeShop.create({:name => "World Cup @ Powells"})
  CoffeeShop.create({:name => "Blue Star Donuts"})
  CoffeeShop.create({:name => "Caffe Umbria"})
  CoffeeShop.create({:name => "World Cup"})
  CoffeeShop.create({:name => "Sterling Coffee Roasters"})
  CoffeeShop.create({:name => "Java Hound"})
  CoffeeShop.create({:name => "Home"})

end


class Stop < ActiveRecord::Base

  Stop.create({:name => "SE Cesar Chavez and Hawthorne", :bar_id => 1, :coffee_shop_id => 1})
  Stop.create({:name => "SE 35th and Hawthorne", :bar_id => 2, :coffee_shop_id => 2})
  Stop.create({:name => "SE 22nd and Hawthorne", :bar_id => 3, :coffee_shop_id => 3})
  Stop.create({:name => "SE 17th and Hawthorne", :bar_id => 4, :coffee_shop_id => 4})
  Stop.create({:name => "SE 12th and Madison", :bar_id => 5, :coffee_shop_id => 5})
  Stop.create({:name => "SE 12th and Taylor", :bar_id => 6, :coffee_shop_id => 6})
  Stop.create({:name => "SE 12th and Alder", :bar_id => 7, :coffee_shop_id => 7})
  Stop.create({:name => "SE 12th and Ash", :bar_id => 8, :coffee_shop_id => 8})
  Stop.create({:name => "E 7th and Burnside", :bar_id => 9, :coffee_shop_id => 9})
  Stop.create({:name => "E 6th and Burnside", :bar_id => 10, :coffee_shop_id => 10})
  Stop.create({:name => "SW 3rd and Ankeny", :bar_id => 11, :coffee_shop_id => 11})
  Stop.create({:name => "W 5th and Burnside", :bar_id => 12, :coffee_shop_id => 12})
  Stop.create({:name => "NW 9th and Couch", :bar_id => 13, :coffee_shop_id => 13})
  Stop.create({:name => "W 10th and Burnside", :bar_id => 14, :coffee_shop_id => 14})
  Stop.create({:name => "W 13th and Burnside", :bar_id => 15, :coffee_shop_id => 15})
  Stop.create({:name => "NW 13th and Everett", :bar_id => 16, :coffee_shop_id => 16})
  Stop.create({:name => "NW 17th and Glisan", :bar_id => 17, :coffee_shop_id => 17})
  Stop.create({:name => "NW 21st and Hoyt", :bar_id => 18, :coffee_shop_id => 18})
  Stop.create({:name => "NW 23rd and Hoyt", :bar_id => 19, :coffee_shop_id => 19})
  Stop.create({:name => "Home", :bar_id => 20, :coffee_shop_id => 20})

end
