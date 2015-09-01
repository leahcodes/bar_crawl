class Game < ActiveRecord::Base
  has_many(:stops)
  has_many(:randoms)
end
