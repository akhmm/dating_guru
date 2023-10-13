class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity, optional: true
  belongs_to :restaurant, optional: true
end
