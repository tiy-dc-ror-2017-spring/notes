puts "Guess a number between 1 and 100"

def random_number
  return (1..100).to_a.sample
end

def already_guessed(guess, guesses)
  if guesses.include? guess
    return "Really? #{guess} Again?"
  else
    guesses << guess
    return ""
  end
end

def bad_guess(guess, low, high)
  if guess > high
    puts "Are you even listening to the clues? That's way too high."
  elsif guess < low
    puts "Why do I even try with you? You know that's too low. Put in some effort."
  end
end

def relative_message_for_guess(guess, random)
  if guess == random
    "win"
  elsif guess < random
    "low"
  elsif guess > random
    "high"
  end
end

random = random_number
guesses = []
lowest_possible = 1
highest_possible = 100

loop do
  input = gets.chomp.to_i

  if guesses.length > 4
    puts "You lose"
    puts "The number was #{random}"
    break
  end

  if already_guessed(input, guesses) != ""
    puts already_guessed(input, guesses)
  end

  bad_guess(input, lowest_possible, highest_possible)

  if relative_message_for_guess(input, random) == "win"
    puts "You win!"
    break
  end

  puts "Too #{relative_message_for_guess(input, random)}"

  if input > lowest_possible
    lowest_possible = input
  end

  if input < highest_possible
    highest_possible = input
  end
end
