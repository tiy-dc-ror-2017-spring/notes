require_relative 'plane'
require 'pry'

car = Vehicle.new(100)

puts car.travel_time(100) == 1
air_force_two = Plane.new(1680)
air_force_one = Plane.new(680)
puts air_force_one.travel_time(3360) == 4
puts air_force_one.number_of_wheels == 18
puts (air_force_one == air_force_two) == false
