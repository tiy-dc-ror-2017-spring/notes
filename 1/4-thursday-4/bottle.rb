class Bottle
  def initialize(color = "blue")
    @color = color
    @current_volume_in_ml = 0
  end

  def fill_up(amount)
    @current_volume_in_ml = @current_volume_in_ml + amount
  end

  def color
    @color
  end

  def how_full?
    @current_volume_in_ml
  end

  def change_color(new_color)
    @color = new_color
  end
end
