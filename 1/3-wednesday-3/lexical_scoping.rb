array_to_look_through = [[ ["Russell", 1, 2, 3 ] ]]

def finder(name, array)
  thing_to_find = name
  array.each do |sub_array|
    thing_to_find = 7
    array.each do |sub_array|  # => [["Russell", 1, 2, 3]]
      if sub_array[0] == thing_to_find  # => true
        return sub_array       # => ["Russell", 1, 2, 3]
      end
    end
  end
end                          # => :finder

finder("Russell", array_to_look_through)  # => ["Russell", 1, 2, 3]
