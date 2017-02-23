require_relative 'vehicle'

class Plane < Vehicle
  def number_of_wheels
    18
  end

  def number_of_engines
    2
  end

  def number_of_gears
    1
  end

  def number_of_wings
    2
  end
end
