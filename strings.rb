puts "Hello! whats your First Name?"
name = gets.chomp
puts "Can I have your Middle Name?"
m_name = gets.chomp
puts "How about your last Name?"
l_name = gets.chomp

puts "Hello #{name} #{m_name} #{l_name}, My Name is Ruby, Nice to meet you."
puts ""
puts "Now I'm to asking for your favourite number. Can I have it"
f_num = gets.chomp
puts "Don't you think #{f_num.to_i + 1} would be a better number?"
