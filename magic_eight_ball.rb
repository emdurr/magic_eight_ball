#Welcome to Magic Eight Ball
# What is your question? or type quit to end the program
  # Set up if/else to handle input of quit
# returns an answer for that question

keep_looping = true

def opening_menu
  puts "\n-- Welcome to Magic Eight Ball!! --"
  puts "\n What is your question? or type QUIT to end program."
  user_input = gets.chomp.upcase

  if user_input == 'QUIT'
    puts "Thank you for playing!"
    puts "Good-bye!!"
    exit
  else
    answer
  end
end

def answer
  available_answers = [
    "Not Likely",
    "Unfortunately",
    "Most Definitly",
    "Why not?",
    "You're up in the night",
    "I don't have an opinion on that",
    "Not in a million years!",
    "You wish",
    "Sure",
    "Certainly!"
  ]
  puts "The Magic Eight Ball says:"
  puts available_answers.sample
end

while keep_looping == true
  opening_menu
end
