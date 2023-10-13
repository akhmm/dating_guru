class AddDetailsDescriptionToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :details_description, :string
  end
end
