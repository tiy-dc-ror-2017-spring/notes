require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "tire"

class TireTest < Minitest::Test
  def test_tire_exists
    assert Tire
  end

  def test_tires_have_a_pressure
    left_front_tire = Tire.new

    assert_equal 32, left_front_tire.pressure
  end
end
