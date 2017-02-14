require 'bigdecimal'  # => true

a = [1,2,3,9]  # => [1, 2, 3, 9]

total = 0                  # => 0
a.each do |element|        # => [1, 2, 3, 9]
  total = total + element  # => 1, 3, 6, 15
end                        # => [1, 2, 3, 9]

b = a.each do |el|  # => [1, 2, 3, 9]
end                 # => [1, 2, 3, 9]


a.include?(2)  # => true

2.3 + 3.4  # => 5.699999999999999


BigDecimal.new("1.2")  # => #<BigDecimal:7fdd2002cc40,'0.12E1',18(18)>


rand  # => 0.07373472795379821

rand(11.6)  # => 9

rand(1..10)  # => 3

# rand("123")      # ~> TypeError: no implicit conversion of String into Integer
("a".."z").to_a.sample  # => "a"

array = [1,2,3]  # => [1, 2, 3]
array[0..-1]     # => [1, 2, 3]

(0..-1).to_a                           # => []

index_to_select = rand(array[0..-1] )  # ~> TypeError: no implicit conversion of Array into Integer
array[index_to_select]

# ~> TypeError
# ~> no implicit conversion of Array into Integer
# ~>
# ~> /Users/rposborne/Desktop/class/1/2-tuesday-2/array.rb:35:in `rand'
# ~> /Users/rposborne/Desktop/class/1/2-tuesday-2/array.rb:35:in `<main>'
