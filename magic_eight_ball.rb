keep_looping = true

@available_answers = []


def opening_menu
  if @available_answers.empty?
    @available_answers.push("Not Likely",
    "Unfortunately",
    "Most Definitly",
    "Why not?",
    "You're up in the night",
    "I don't have an opinion on that",
    "Not in a million years!",
    "You wish",
    "Sure",
    "Certainly!")
  else
  end
  puts "\n-- Welcome to Magic Eight Ball!! --"
  puts "\n What is your question? or type QUIT to end program."
  user_input = gets.chomp.upcase

  case user_input
    when 'QUIT'
      puts "Thank you for playing!"
      puts "Good-bye!!"
      exit
    when 'WHY DO YOU ONLY HAVE A LIMITED ANSWER SELECTION?'
      puts "Excellent question!!"
      add_answer
    when 'WILL I EVER FEEL YOUNG AGAIN?'
      puts "That's the perfect question!"
      reset_answers
    when 'WHERE DO I GO FROM HERE?'
      puts "How did you know my secret?!"
      print_answers
    else
      answer
  end
end

def add_answer
  puts "What answer would you like to add?"
  user_input_2 = gets.strip

  if @available_answers.include?(user_input_2)
    puts "I'm sorry, that answer already exists."
    puts "Thanks for trying, though"
    opening_menu
  else
    puts "Thank you! #{user_input_2} added."
    @available_answers << user_input_2
  end
end

def reset_answers
  puts "Reset available answers? y/n"
  input = gets.strip.downcase
  if input == 'y'
    @available_answers.clear
    puts "\n"
    opening_menu
  else
    puts "Thanks anyway."
    opening_menu
  end
end

def print_answers
  puts @available_answers.join("\n")
end

def answer
  puts "The Magic Eight Ball says:"
  puts @available_answers.sample
end

while keep_looping == true
  opening_menu
end
