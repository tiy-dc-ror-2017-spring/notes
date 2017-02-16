require_relative "bottle"  # => true

matts_bottle = Bottle.new("green")  # => #<Bottle:0x007f9a54913c50 @color="green", @current_volume_in_ml=0>

puts "Matt's bottle:"        # => nil
puts matts_bottle.how_full?  # => nil

# >> Matt's bottle:
# >> 0
