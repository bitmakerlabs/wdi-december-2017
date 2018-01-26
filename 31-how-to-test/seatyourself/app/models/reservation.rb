class Reservation < ActiveRecord::Base

  validates :people, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 500 }

  validate :restaurant_must_be_available

  belongs_to :restaurant
  belongs_to :user

  def restaurant_must_be_available
    if !restaurant.available?(begin_time, people)
      errors.add(:begin_time, "not enough capacity at this time")
    end
  end
end
