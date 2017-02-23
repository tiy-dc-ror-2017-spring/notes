my_array = ["horse", "cow", "goat", "chicken", "walrus"]

# index = 0                 # => 0
# my_array.length.times do  # => 5
#   puts my_array[index]    # => nil, nil, nil, nil, nil
#   index += 1              # => 1,   2,   3,   4,   5
# end                       # => 5


def our_each(our_array)
  index = 0
  until index == our_array.length
    element = our_array[index]

    # OUR CUSTOM CODE
    # puts element * 2
    yield(element)

    index += 1
  end
end

puts "Our Each " + ("-" * 80)
our_each(my_array) do |x, i|
  p x * 2
  p i
end

our_each(my_array) do |x|
  puts x
end

puts ".each " + ("-" * 80)
my_array.each do |element|
  puts element * 2
end
