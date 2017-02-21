require_relative "vehicle"

class Bicycle < Vehicle
  def initialize(speed, gears)
    super(speed)
    @gears = gears
  end

  def number_of_wheels
    2
  end

  def number_of_engines
    0
  end

  def number_of_gears
    @gears
  end
end
