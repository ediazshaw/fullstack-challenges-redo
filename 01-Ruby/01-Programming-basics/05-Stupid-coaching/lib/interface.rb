require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
loop do
  # code to be executed
  puts "Type your answer"
  your_message = gets.chomp
  break if your_message == "I am going to work right now!"

  puts coach_answer_enhanced(your_message)
end
