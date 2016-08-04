#Welcome to Magic Eight Ball
# What is your question? or type quit to end the program
  # Set up if/else to handle input of quit
# returns an answer for that question

keep_looping = true

def opening_menu
  puts "\n-- Welcome to Magic Eight Ball!! --"
  puts "\n What is your question? or type QUIT to end program."
  user_input = gets.chomp.upcase

  if user_input = 'QUIT'
    exit
  else
    answer
  end
end

def answer
  puts "Your answer here"
end

while keep_looping == true
  opening_menu
end
