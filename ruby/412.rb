require 'minitest/autorun'

def fizz_buzz(n)
  pre_condition(n)
  result = []

  (1..n).each do |i|
    if i % 3 == 0 && i % 5 == 0
      result << "FizzBuzz"
    elsif i % 3 == 0
      result << "Fizz"
    elsif i % 5 == 0
      result << "Buzz"
    else
      result << i.to_s
    end
  end

  result
end

def pre_condition(value)
  raise ArgumentError, "Argument must be an integer" unless value.is_a? Integer
end

class TestFizzBuzz < Minitest::Test
  def test_fizz_buzz
    assert_equal ["1", "2", "Fizz"], fizz_buzz(3)
    assert_equal ["1", "2", "Fizz", "4", "Buzz"], fizz_buzz(5)
    assert_equal ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"], fizz_buzz(15)
  end

  def test_pre_condition
    assert_raises ArgumentError do
      fizz_buzz("a")
    end
  end
end
