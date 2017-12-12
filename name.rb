puts "what's your full name?"
name = gets.chomp
puts "did you know that there are #{name.length} characters in your name, #{name}?"

puts ""

puts 'heres another similar but more accurate one'
puts 'what\'s your first name?'
f_name = gets.chomp
puts 'second name?'
s_name = gets.chomp
puts 'last name?'
l_name = gets.chomp

puts "theres actually #{f_name.length + s_name.length + l_name.length} characters\
 in your name? This one Omits the spaces in the spelling."
