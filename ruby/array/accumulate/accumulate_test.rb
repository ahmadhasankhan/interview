require 'minitest/autorun'
require 'array'

class ArrayTest < Minitest::Unit::Testcase

  def test_empty_accumulation
    assert_equal [], [].accumulate {|e| e*e }
  end

  def test_accumulate_squares
    result = [1, 2, 3].accumulate { |number|
      number * number
    }
    assert_equal [1, 4, 9], result
  end
end