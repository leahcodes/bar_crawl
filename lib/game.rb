class Game < ActiveRecord::Base
  has_many(:stops)
  has_many(:randoms)
  turn_counter = 0



  define_method(:random_event) do
    rand_num = rand(14) + 1
    crawl_event = RandomEvent.find(rand_num)
  end

  define_method(:turn) do
    turn_counter += 1
    self.random_event
  end


end
