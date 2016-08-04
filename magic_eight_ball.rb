keep_looping = true

@available_answers = [
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

def opening_menu
  puts "\n-- Welcome to Magic Eight Ball!! --"
  puts "\n What is your question? or type QUIT to end program."
  user_input = gets.chomp.upcase

  case user_input
    when 'QUIT'
      puts "Thank you for playing!"
      puts "Good-bye!!"
      exit
    when 'WHAT IS THE BEST QUESTION?'
      puts "Excellent question!!"
      easter_egg_1
    when 'WILL I EVER FEEL YOUNG AGAIN?'
      puts "That's the perfect question!"
      easter_egg_2
    when 'WHERE DO I GO FROM HERE?'
      puts "How did you know my secret?!"
      easter_egg_3
    else
      answer
  end
end

def easter_egg_1
  puts "What answer would you like to add?"
  user_input_2 = gets.strip

  if @available_answers2.include?(user_input_2)
    puts "I'm sorry, that answer already exists."
    puts "Thanks for trying, though"
    opening_menu
  else
    puts "Thank you! #{user_input_2} added."
    @available_answers2 << user_input_2
  end
end

def easter_egg_2
  puts "Reset available answers? y/n"
  input = gets.strip.downcase
  if input == 'y'
    @available_answers2.clear
    puts "\n"
    arr_clone
  else
    puts "Thanks anyway."
    opening_menu
  end
end

def arr_clone
  @available_answers2 = @available_answers.clone
  opening_menu
end

def answer
  puts "The Magic Eight Ball says:"
  puts @available_answers2.sample
end

while keep_looping == true
  opening_menu
end
