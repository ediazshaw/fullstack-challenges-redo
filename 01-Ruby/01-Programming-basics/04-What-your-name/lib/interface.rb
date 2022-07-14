require_relative "compute_name"

# TODO: ask for the first name
puts "Input first name"
first = gets.chomp
# TODO: ask for the middle name
puts "Input middle name"
middle = gets.chomp
# TODO: ask for the last name
puts "Input last name"
last = gets.chomp
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
puts "Hello, #{compute_name(first, middle, last)}"
