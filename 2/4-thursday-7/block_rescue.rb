class MySpecialError < StandardError
end

def this_blows_up
  raise MySpecialError
end

# Run custom code, that must raise an error and if it does raise print emjoi boom
# otherwise squid face
def assert_raise(error_to_raise = Exception)
  begin
    # Dangerous Code
    yield
  rescue => the_error_object
    if the_error_object.class == error_to_raise
      print "."
    else
      print "F"
    end
  else
    print "E"
  end

end

assert_raise do
  p 1 + 1
end

assert_raise do
  this_blows_up
end

print "\n"
