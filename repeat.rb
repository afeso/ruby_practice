# this program should prompt the user for as many word as the like and only stop
# asking when an empty string is entered. Then, The words are repeated back in
# alphabetical order.

words = []
user = ''
puts 'Type as many word as you like, and enter nothing to stop.'
user = gets.chomp
words.push user
while user != ''
  user = gets.chomp
  words.push user
end
puts
puts 'Below are the words you enterd in alphabetical order.'
puts words.sort
