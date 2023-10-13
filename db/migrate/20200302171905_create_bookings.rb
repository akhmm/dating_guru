class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :activity, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end