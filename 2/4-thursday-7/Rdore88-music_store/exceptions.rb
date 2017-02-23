# NoInventoryError  # ~> NameError: uninitialized constant NoInventoryError\nDid you mean?  NoMemoryError

begin

rescue NoInventoryError
  puts "IT Worked"
else
end

# ~> NameError
# ~> uninitialized constant NoInventoryError
# ~> Did you mean?  NoMemoryError
# ~>
# ~> /Users/rposborne/theironyard/homework/Rdore88-music_store/exceptions.rb:1:in `<main>'
