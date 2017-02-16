class Bottle

  def initialize
    @color = "blue"
  end

  def color
    @color
  end

  def change_color(new_color)
    @color = new_color
  end
end

matts_bottle = Bottle.new
# russell_bottle = Bottle.new  # => #<Bottle:0x007fda9884ddf0 @color="blue">

matts_bottle.color
matts_bottle.color.object_id
matts_bottle.color.object_id
# russell_bottle.color                # => "blue"
matts_bottle.change_color("urple")
matts_bottle.color
matts_bottle.color.object_id
matts_bottle.color.object_id


matts_bottle

a = 1

a
a
a
a = 2

# Bottle.color  # ~> NoMethodError: undefined method `color' for Bottle:Class
