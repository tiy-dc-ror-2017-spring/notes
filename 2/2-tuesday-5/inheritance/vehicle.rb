require_relative 'no_wings_error'

class Vehicle
  def initialize(speed)
    @average_speed = speed
  end                       # => :initialize

  def travel_time(distance)
    distance / @average_speed
  end                          # => :travel_time

  def number_of_wheels
    4
  end                # => :number_of_wheels

  def number_of_engines
    1
  end                 # => :number_engines

  def number_of_gears
    6
  end

  def number_of_wings
    raise NoWingsError, "#{self.class} does not have wings you dolt"
  end
end                   # => :number_engines
