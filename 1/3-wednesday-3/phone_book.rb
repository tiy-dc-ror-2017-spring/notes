require "set"

phone_book = {}

def find_number_for_name(lookup, phone_book)
  phone_book.each do |person|
    name = person["name"]
    if name == lookup
      return person["number"]
    end
  end
end

loop do
  puts "Whats your name?"
  input = gets.chomp
  break if input.empty?
  puts "Whats yo nummer?"
  number = gets.chomp
  person = { "name" => input, "number" => number }

  person["name"] = input
  person["number"] = number


  puts "Try Again Jerkyface Mc Jerkface" if phone_book.include?(input)

  phone_book[input] = person
  p phone_book
end

puts "Who's nummer are you looking for?"
name_to_lookup = gets.chomp
person = phone_book[name_to_lookup]

if person
  puts person["number"]
else
  puts "We don't have that person"
end

puts "Thanks for using Russell's phone kompany phane boke. "
