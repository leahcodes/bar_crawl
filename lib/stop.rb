class Stop < ActiveRecord::Base
  has_many(:cafes)
  has_many(:bars)
  
end
