require 'minitest/autorun'

# https://alexa.bitmaker.co/wdi/december-2017/assignments/3322

# Define a method called word_counter that accepts one string argument and returns a number representing how many separate words are in that string. For example:

def word_counter(string)
  array_of_words = string.split("")
  number_of_words = array_of_words.length
  number_of_words
end

class TestWordCounter < MiniTest::Test
  word_counter("Hello world") # returns 2

  def test_two_words_returns_2
    # first test
    actual_value = word_counter("Hello world")
    expected_value = 2

    assert_equal(expected_value, actual_value)
  end

  def test_four_words_returns_4
    # second test
    actual_value = word_counter("This is a sentence")
    expected_value = 4

    assert_equal(expected_value, actual_value)
  end

  def test_empty_string_returns_0
    # third test
    actual_value = word_counter("")
    expected_value = 0

    assert_equal(expected_value, actual_value)
  end

  def test_three_words_returns_3
    skip
  end
end
