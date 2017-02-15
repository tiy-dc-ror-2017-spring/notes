def greeter(name = "Class", yelling = "")
  message = "Hello #{name}"                # => "Hello Russell", "Hello Class", "Hello Russell", "Hello "

  if yelling        # => "",              "",            true,            true
    message.upcase  # => "HELLO RUSSELL", "HELLO CLASS", "HELLO RUSSELL", "HELLO "
  else
    message
  end               # => "HELLO RUSSELL", "HELLO CLASS", "HELLO RUSSELL", "HELLO "
end                 # => :greeter


greeter("Russell")  # => "HELLO RUSSELL"

greeter  # => "HELLO CLASS"

greeter("Russell", true)  # => "HELLO RUSSELL"

greeter(nil, true)  # => "HELLO "
