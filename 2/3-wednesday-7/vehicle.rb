require 'pry'  # => true

class Vehicle
  attr_reader :speed           # => nil
  def initialize(speed, size)
    @speed = speed             # => 100, 800
    @size = size               # => 10,  1000
  end                          # => :initialize

  def travel_time(distance)
    distance / self.speed
  end                        # => :travel_time
end                          # => :travel_time

module Flyable
  def can_fly?
    true        # => true
  end           # => :can_fly?
end             # => :can_fly?

module Cargoable
  def cargo?
    true
  end             # => :cargo?
end               # => :cargo?

class Truck < Vehicle  # => Vehicle
  include Cargoable    # => Truck
end                    # => Truck

class Plane < Vehicle  # => Vehicle
  include Cargoable    # => Plane
  include Flyable      # => Plane
end                    # => Plane

class Helicopter < Vehicle  # => Vehicle
  include Flyable           # => Helicopter
end                         # => Helicopter
# ~> NoMethodError
# ~> undefined method `can_fly?' for Flyable:Module
# ~>
# ~> /Users/rposborne/Desktop/class/2/3-wednesday-7/vehicle.rb:47:in `<main>'
