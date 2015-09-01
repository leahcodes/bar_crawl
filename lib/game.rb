class Game < ActiveRecord::Base
  has_many(:stops)
  has_many(:randoms)
  turn_counter = 0



  define_method(:random_event) do
    crawl_event = RandomEvent.find(rand(14) + 1)
  end

  define_method(:turn) do
    turn_counter += 1
    self.random_event
  end


end
