person_to_announce = "Russell"  # => "Russell"

def announcer(name = "Class")        # ~> ArgumentError: wrong number of arguments (given 0, expected 1)
  puts("Hello, #{name}!")  # => nil, nil
end                        # => :announcer


announcer("Russell")  # => nil

announcer(person_to_announce)  # => nil

announcer

# >> Hello, Russell!
# >> Hello, Russell!

# ~> ArgumentError
# ~> wrong number of arguments (given 0, expected 1)
# ~>
# ~> /Users/rposborne/Desktop/class/1/2-tuesday-2/methods.rb:3:in `announcer'
# ~> /Users/rposborne/Desktop/class/1/2-tuesday-2/methods.rb:12:in `<main>'
