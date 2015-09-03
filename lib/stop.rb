class Stop < ActiveRecord::Base
  has_many :coffee_shops, :class_name => "CoffeeShop"
  has_many(:bars)

end
