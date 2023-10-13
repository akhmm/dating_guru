class RemoveOpeningHourFromRestaurants < ActiveRecord::Migration[6.0]
  def change

    remove_column :restaurants, :opening_hour, :string
  end
end
