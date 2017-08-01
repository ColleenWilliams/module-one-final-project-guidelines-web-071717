def welcome
  # puts out a welcome message here!
  puts "Welcome to the Wine Library"
end

def validate_user
  puts "Please enter your name"
  # use gets to capture the user's input. This method should return that input, downcased.
  user_input = gets.chomp
end

def what_are_you_eating?
  puts "What are you eating?"

  user_input = gets.chomp

end
