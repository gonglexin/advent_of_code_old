require 'minitest/autorun'
require_relative 'day1.rb'

class Day1Test < Minitest::Test
  def test_final_floor
    assert_equal 0,  final_floor('(())')
    assert_equal 0,  final_floor('()()')
    assert_equal 3,  final_floor('(((')
    assert_equal 3,  final_floor('(()(()(')
    assert_equal 3,  final_floor('))(((((')
    assert_equal -1, final_floor('())')
    assert_equal -1, final_floor('))(')
    assert_equal -3, final_floor(')))')
    assert_equal -3, final_floor(')())())')
  end

  def test_basement
    assert_equal 1, basement(')')
    assert_equal 5, basement('()())')
  end
end
