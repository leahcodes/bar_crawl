class RandomEvent < ActiveRecord::Base

  RandomEvent.create({:bar => "lost 0.10 bitcoins in a untimely sports bet with Travis Crampton.",
                              :cafe => "tipped Ryan the barista too much",
                              :change_money => -23})
  RandomEvent.create({:bar => "was chased by Andrew's lost & rabies-infested dog that wasn't properly tracked by his app.",
                              :cafe => "got attacked by Andrew's rabies infested dog in the cafe that wasn't properly tracked by his app",
                              :change_energy => -20})
  RandomEvent.create({:bar => "found half a bottle of Burnetts on the ground and drank it.",
                              :cafe => "tried out the cafe's new and unnecessary wine menu.",
                              :change_happiness => 30})
  RandomEvent.create({:bar => "found 0.243 bitcoins in the trash.",
                              :cafe => "stole $56.07 from the tip jar.",
                              :change_money => 56.07})
  RandomEvent.create({:bar => "befriended a homeless man who shared his last drops of alcohol.",
                              :cafe => "snuck in a flask of patron to add to your venti iced half-cafe 2% traditional machiato wet.",
                              :change_happiness => 20})
  RandomEvent.create({:bar => "got a ticket from the Finest for public intoxication and slightly sobered up. Thanks Officer Iman.",
                              :cafe => "got a ticket from the Finest for drunken disorderly conduct and slightly sobered up. Thanks Officer Iman.",
                              :change_happiness => -10, :change_money => -30})
  RandomEvent.create({:bar => "took a nap in the dumpster with Bunker, who could not explain why he was in the dumpster.",
                              :cafe => "took a nap on top of a cafe table with Bunker, who could not explain what he was doing there.",
                              :change_energy => 15, :change_happiness => -15})
  RandomEvent.create({:bar => "got in a barfight with a minor named Jennifer Bell. Lost.",
                              :cafe =>  "got in a fight with a minor called Jennifer Bell after she rudely knocked the coffee out of your hand. Lost.",
                              :change_energy => -10})
  RandomEvent.create({:bar => "puked in the alley outside the bar.",
                              :cafe => "Drank 14 espresso shots on an empty stomach. Puked on barista.",
                              :change_happiness => -10})
   RandomEvent.create({:bar => "got egged by Austin Kincaid, standing in a jock-strap atop Big Pink.",
                              :cafe =>  "have your just-purchased and oh-so-fresh egg sandwich stolen by Austin in a bloody confrontation that leaves both parties exhuasted. But he has the sandwich.",
                              :change_energy => -10})
   RandomEvent.create({:bar => "was assulted, beaten, and left to die by an intoxicated and violent Jason Lane.",
                              :cafe => "accidently knock your artisan seltzer water palette cleanser on Jason Lane, who smashes his mason jar over your head and leaves you on the floor crying.",
                              :change_energy => -80})
   RandomEvent.create({:bar => "encountered a butt-ass naked Carlo de Gregorio, doing scorpion yoga pose on the sidewalk in front of Powells. Mysteriously sobered up a little.",
                              :cafe => "encountered a butt-ass naked Carlo de Gregorio, doing scorpion yoga pose on the sidewalk in front of Powells. Mysteriously sobered up a little.",
                              :change_happiness => -10})
   RandomEvent.create({:bar => "used Iman's Kush app to acquire medical grade marijuana to scent your backpack and attract dilenquent teenagers.",
                              :cafe => "used Iman's Kush app to acquire medical grade marijuana to scent your backpack and attract dilenquent teenagers.",
                              :change_money => -40})
    RandomEvent.create({:bar => "used Iman's Kush app to acquire medical grade marijuana to scent your backpack and attract dilenquent teenagers.",
                               :cafe => "used Iman's Kush app to acquire medical grade marijuana to scent your backpack and attract dilenquent teenagers.",
                               :change_money => -40})
   RandomEvent.create({:bar => "was found by Kyle Mellander, who took them home in his soccer-mom van, fed them nourishing glass cans of organic, free-range, grass-fed, sustainable, gluten-free, locally sourced, baby food, and tucked them into bed with a kiss goodnight. Game over.",
                              :cafe => "was found by Kyle Mellander, who took them home in his soccer-mom van, fed them nourishing glass cans of organic, free-range, grass-fed, sustainable, gluten-free, locally sourced, baby food, and tucked them into bed with a kiss goodnight. Game over."})
end
