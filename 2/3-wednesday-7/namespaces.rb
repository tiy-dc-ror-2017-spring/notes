# class BackEnd
#   def initialize
#     puts "I am the outer backend"  # => nil, nil
#   end                              # => :initialize
# end                                # => :initialize

module TIY
  class BackEnd
    def initialize
      puts "I am the inner backend"  # => nil, nil
    end                              # => :initialize
  end                                # => :initialize
end            # => #<TIY::BackEnd:0x007fce1d814de8>


TIY::BackEnd.new  # => #<TIY::BackEnd:0x007fce1d8143c0>
BackEnd.new       # ~> NameError: uninitialized constant BackEnd

# >> I am the inner backend
# >> I am the inner backend

# ~> NameError
# ~> uninitialized constant BackEnd
# ~>
# ~> /Users/rposborne/Desktop/class/2/3-wednesday-7/namespaces.rb:22:in `<main>'
