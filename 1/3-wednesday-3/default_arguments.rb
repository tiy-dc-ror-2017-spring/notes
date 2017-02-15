def greeter(name = "Class", yelling = "")
  message = "Hello #{name}"

  if yelling
    message.upcase
  else
    message
  end
end


greeter("Russell")

greeter

greeter("Russell", true)

greeter(nil, true)
