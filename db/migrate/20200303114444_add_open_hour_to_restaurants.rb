class AddOpenHourToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :open_hour, :string
  end
end
