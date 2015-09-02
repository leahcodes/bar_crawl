class Game < ActiveRecord::Base
  has_many(:stops)
  turn_counter = 0




  define_method(:turn) do
    turn_counter += 1
    self.random_event
  end


end
