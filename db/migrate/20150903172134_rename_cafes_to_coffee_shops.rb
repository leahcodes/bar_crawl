class RenameCoffeeShopsToCoffeeShops < ActiveRecord::Migration
  def change
    rename_table :coffee_shops, :coffee_shops
  end
end
