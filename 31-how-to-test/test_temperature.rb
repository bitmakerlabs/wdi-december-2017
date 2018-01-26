require 'minitest/autorun'

require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
  def test_f_to_c_positive
    actual_value = f_to_c(50)
    expected_value = 10

    assert_equal(expected_value, actual_value)
  end

  def test_f_to_c_negative
    actual_value = f_to_c(-4)
    expected_value = -20

    assert_equal(expected_value, actual_value)
  end

  def test_c_to_f_positive
    actual_value = c_to_f(10)
    expected_value = 50

    assert_equal(expected_value, actual_value)
  end

  def test_c_to_negative
    actual_value = c_to_f(-20)
    expected_value = -4

    assert_equal(expected_value, actual_value)
  end
end
