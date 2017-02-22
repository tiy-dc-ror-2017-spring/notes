module SuperMath
  PI = 3.18       # => 3.18

  def the_answer
    42            # => 42
  end             # => :the_answer

  extend self  # => SuperMath
end            # => SuperMath

SuperMath::PI         # => 3.18
SuperMath.the_answer  # => 42
