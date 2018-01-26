require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  def test_people_must_be_an_integer
    # arrange
    restaurant = Restaurant.create!(name: "Bitmaker Cafe", opening_hour: 1, closing_hour: 10)
    reservation = Reservation.new(people: 1.5, restaurant_id: restaurant.id)

    # act
    reservation.save

    # assert
    actual_value = reservation.errors.full_messages
    expected_value = ["People must be an integer"]

    assert_equal(expected_value, actual_value)
  end

  def test_people_must_be_greater_than_0
    # arrange
    restaurant = Restaurant.create!(name: "Bitmaker Cafe", opening_hour: 1, closing_hour: 10)
    reservation = Reservation.create(restaurant_id: restaurant.id, people: 0)

    # act
    reservation.save

    # assert
    actual_value = reservation.errors.full_messages
    expected_value = ["People must be greater than 0"]

    assert_equal(expected_value, actual_value)
  end

  def test_people_must_be_less_than_500
  end
end
