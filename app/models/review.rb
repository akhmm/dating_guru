class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, optional: true
  belongs_to :activity, optional: true
  validates :rating, presence: true
  validates :content, presence: true
  validate :activity_or_restaurant

  def activity_or_restaurant
    # if it was activity or (||) restaurant, then if you had BOTH there would be no error
    unless activity.blank? ^ restaurant.blank?
      errors.add(:base, "Must have either activity or restaurant but not both")
    end
  end
end
