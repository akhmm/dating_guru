class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.string :open_hour
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
