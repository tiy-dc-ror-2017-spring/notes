# get a word from a user
# answer = "tacocat"
number_of_times_to_run = 5
number_of_questions_asked = 0

while number_of_questions_asked <= number_of_times_to_run
  puts "asking for the " + number_of_questions_asked + " time"
  puts "Whats the word?"
  answer = gets.chomp

  # p answer

  # reverse and check if its equal
  if answer.reverse == answer && answer.length > 1
    puts "The word is indeed a palindrome watson!"
  else
    puts "You Fool Watson! " + answer.reverse + " is not a palindrome"
  end

  number_of_questions_asked = number_of_questions_asked + 1
  # number_of_questions_asked += 1
end
