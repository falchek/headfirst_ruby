# Get My Number Game
# Written by Mike Falchek

# Get the players name and greet them
puts "Welcome to 'Get My Number!'"
print "What's your name? "

# get user input
input = gets
# chomp sanitizes input
name = input.chomp

# Interpolate input
puts "Welcome, #{name}!" 

# Store a random  number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track how many guesses a player has made.
num_guesses = 0

# Track whether or not a player has guessed correctly
guessed_it = false

# You can also use to_s
until num_guesses == 10 || guessed_it
    puts "#{10 - num_guesses} guesses left"
    print "Make a guess: "
    # Convert the input to a number
    guess = gets.to_i
    num_guesses += 1

    if guess < target
        puts "Oops!  Your guess was LOW."
    elsif guess > target
        puts "Oops!  Your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses."
        guessed_it = true
    end
end 

# unless is if not
unless guessed_it
    puts "Sorry, #{name}. You didn't guess my number.  (It was #{target}.)"
end