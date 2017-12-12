puts 'Please answer the following questions'
puts
puts 'What year were you born?'
years = gets.chomp.to_i
puts 'What month were you born?'
months = gets.chomp.to_i
puts 'What day was it?'
days = gets.chomp.to_i

puts
spanks = Time.new.year - years
puts "WOW! you're #{spanks} Years Old,"
puts "Now I'm gonna spank you #{spanks} times."

i = 0
spanks.times do
  i = i + 1
  puts "#{i} SPANK!"
  puts
end
