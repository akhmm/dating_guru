class AddMinimumPriceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :minimum_price, :integer
  end
end
