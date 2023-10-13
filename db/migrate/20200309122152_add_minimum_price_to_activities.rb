class AddMinimumPriceToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :minimum_price, :integer
  end
end
