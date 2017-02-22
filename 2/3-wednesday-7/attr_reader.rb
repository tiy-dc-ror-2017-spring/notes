class Cup
  attr_reader :color, :volume_of_contents  # => nil
  attr_writer :color                       # => nil
  # attr_accessor :color # Does Both

  def initialize(color, volume_of_contents)
    @color = color                            # => "Red"
    @volume_of_contents = volume_of_contents  # => 500
  end                                         # => :initialize

  # def color=(other)
  #   @color = other   # => "Red with Sharpie"
  # end                # => :color=
end  # => :initialize


red_solo_cup = Cup.new("Red", 500)       # => #<Cup:0x007f9184890298 @color="Red", @volume_of_contents=500>
red_solo_cup.color                       # => "Red"
red_solo_cup.color = "Red with Sharpie"  # => "Red with Sharpie"
red_solo_cup.color                       # => "Red with Sharpie"
red_solo_cup.volume_of_contents          # => 500
