require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "vehicle"
require_relative "electric_car"
require_relative "hybrid_car"
require_relative "motorcycle"
require_relative "plane"
require_relative "bicycle"

class VehicleTest < Minitest::Test
  # i_suck_and_my_tests_are_order_dependent!

  def test_vehicle_exists
    assert Vehicle
  end

  def test_vehicle_has_normal_methods
    car = Vehicle.new(40)
    assert_equal car.travel_time(40), 1
    assert_equal 3, car.travel_time(120)
    assert_equal car.number_of_wheels, 4
    assert_equal car.number_of_engines, 1
    assert_equal car.number_of_gears, 6
  end

  def test_electric_car
    car = ElectricCar.new(30)
    assert_equal car.travel_time(30), 1
    assert_equal car.travel_time(120), 4
    assert_equal car.number_of_wheels, 4
    assert_equal car.number_of_engines, 1
    assert_equal car.number_of_gears, 1
  end

  def test_d_hybrid_car
    car = HybridCar.new(40)
    assert_equal car.travel_time(40), 1
    assert_equal car.travel_time(120), 3
    assert_equal car.number_of_wheels, 4
    assert_equal car.number_of_engines, 2
    assert_equal car.number_of_gears, 4
  end

  def test_e_motorcycle
    motorcycle = Motorcycle.new(40)
    assert_equal motorcycle.travel_time(40), 1
    assert_equal motorcycle.travel_time(120), 3
    assert_equal motorcycle.number_of_wheels, 2
    assert_equal motorcycle.number_of_engines, 1
    assert_equal motorcycle.number_of_gears, 4
  end


  def test_f_plane
    plane = Plane.new(400)
    assert_equal plane.travel_time(400), 1
    assert_equal plane.travel_time(1200), 3
    assert_equal plane.number_of_wheels, 18
    assert_equal plane.number_of_engines, 2
    assert_equal plane.number_of_gears, 1
    assert_equal plane.number_of_wings, 2
  end

  def test_g_bicycle
    bike = Bicycle.new(4, 15)
    assert_equal bike.travel_time(4), 1
    assert_equal bike.travel_time(12), 3
    assert_equal bike.number_of_wheels, 2
    assert_equal bike.number_of_engines, 0
    assert_equal bike.number_of_gears, 15
  end

  def test_h_unknown_wings
    car = Vehicle.new(30)
    assert_raises(NoWingsError) do
      car.number_of_wings
    end

    bike = Bicycle.new(4, 21)
    assert_raises(NoWingsError) do
      bike.number_of_wings
    end
  end
end
