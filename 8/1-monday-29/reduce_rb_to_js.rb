class Array
  def hi
    "hi"     # => "hi"
  end        # => :hi
end          # => :hi


class Array
  def bye
    "bye"
  end        # => :bye
end          # => :bye

sum_me = [1,2,3,4,5,6]  # => [1, 2, 3, 4, 5, 6]
sum_me.hi               # => "hi"

sum = 0                             # => 0
sum_me.each{ |el| sum = el + sum }  # => [1, 2, 3, 4, 5, 6]
puts sum                            # => nil


# Foo.new.hi

# class Array
#   def sum
#     acc = 0                          # => 0
#     self.each{ |el| acc = el + acc}  # => [1, 2, 3, 4, 5, 6]
#     acc                              # => 21
#   end                                # => :sum
# end                                  # => :sum

class Array
  def sum
    self.molly(0){ |acc, el| acc + el }  # => 21
  end                                    # => :sum

  def molly(starting_point, &code)
    acc = starting_point                        # => 0
    self.each{ |el| acc = code.call(acc, el) }  # => [1, 2, 3, 4, 5, 6]
    acc                                         # => 21
  end                                           # => :molly
end                                             # => :molly



sum_me.sum  # => 21

# >> 21
