require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "vehicle"

class VehicleTest < Minitest::Test
  def car
    # if @car
    #   @car
    # else
    #   @car = Vehicle.new(120.0)
    # end
    #
    #  could be
    #
    # @car = @car || Vehicle.new(120.0)

    @car ||= Vehicle.new(120.0)
  end

  def test_vehicle_exists
    assert Vehicle
  end

  def test_initialize
    assert_equal(120, car.speed)
  end

  def test_travel_time
    assert_equal 2, car.travel_time(240)
  end

  def test_has_a_clock
    assert_kind_of Clock, car.clock
    assert_equal car.clock, car.clock
  end

  def test_has_a_tires
    assert_kind_of Array, car.tires
    assert_kind_of Tire, car.tires.first
  end

  def test_has_number_of_wheels
    assert_equal 4, car.number_of_wheels
  end

  def test_has_the_correct_number_of_tires
    assert_equal car.number_of_wheels, car.tires.length
  end
end
