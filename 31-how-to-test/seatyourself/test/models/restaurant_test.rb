require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  def test_restaurant_is_invalid_without_name
    # arrange
    restaurant = Restaurant.new(opening_hour: 1, closing_hour: 10)

    # act
    restaurant.valid? # trigger the validations

    # assert
    actual_value = restaurant.errors.full_messages
    expected_value = ["Name can't be blank"]
  end

  def test_restaurant_is_invalid_without_opening_hour
    # arrange
    restaurant = Restaurant.new(name: "Bitmaker Cafe", closing_hour: 12)

    # act
    restaurant.save

    # assert
    actual_value = restaurant.errors.full_messages
    expected_value = ["Opening hour can't be blank"]
    assert_equal(expected_value, actual_value)
  end

  def test_restaurant_is_invalid_without_closing_hour
  end

  def test_restaurant_belongs_to_category
    # arrange
    category = Category.create(name: "Coffee shop")
    restaurant = Restaurant.create(name: "Bitmaker Joint", opening_hour: 1, closing_hour: 10, category_id: category.id)

    # act
    actual_value = restaurant.category

    # assert
    expected_value = category
    assert_equal(expected_value, actual_value)
  end

  def test_restaurant_has_many_reservations
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
  end

  def test_restaurant_is_available_later_same_day
  end

  def test_restaurant_is_unavailable_in_the_past
  end

  def test_restaurant_is_unavailable_when_full
  end

  def test_restaurant_is_unavailable_before_opening
  end

  def test_restaurant_is_available_at_opening
  end

  def test_restaurant_is_unavailable_at_closing_time
  end

  def test_restaurant_is_unavailable_past_closing_time
  end
end
