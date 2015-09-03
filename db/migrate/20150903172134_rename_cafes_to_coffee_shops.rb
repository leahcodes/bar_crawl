class RenameCafesToCoffeeShops < ActiveRecord::Migration
  def change
    rename_table :cafes, :coffee_shops
  end
end
