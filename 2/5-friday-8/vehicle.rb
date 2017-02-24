require_relative "clock"
require_relative "tire"
require "pry"

class Vehicle
  attr_reader :speed, :clock, :tires
  def initialize(speed)
    @speed = speed
    @clock = Clock.new

    @tires = []
    add_tires_to_wheels
  end

  def travel_time(distance)
    distance / speed
  end

  def number_of_wheels
    4
  end

  private def add_tires_to_wheels
    @tires << Tire.new until @tires.length == number_of_wheels
  end
end
