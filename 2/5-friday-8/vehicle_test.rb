require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "vehicle"

class VehicleTest < Minitest::Test

  def test_vehicle_exists
    assert Vehicle
  end

  def test_initialize
    car = Vehicle.new(60)
    assert_equal 60, car.speed
  end

  def test_travel_time
    car = Vehicle.new(120.0)
    assert_equal 2, car.travel_time(240)
  end

  def test_has_a_clock
    car = Vehicle.new(120.0)

    assert_kind_of Clock, car.clock
    assert_equal car.clock, car.clock
  end

  def test_has_a_tires
    car = Vehicle.new(120.0)

    assert_kind_of Array, car.tires
    assert_kind_of Tire, car.tires.first
  end

  def test_has_number_of_wheels
    car = Vehicle.new(120.0)
    assert_equal 4, car.number_of_wheels
  end

  def test_has_the_correct_number_of_tires
    car = Vehicle.new(120.0)

    assert_equal car.number_of_wheels, car.tires.length
  end
end
