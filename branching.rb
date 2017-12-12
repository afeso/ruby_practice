puts "Hello and welcome to 7th grade English."
puts "My name is Mr. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, " + name + "."
else
  puts name + "? you mean " + name.capitalize + ", rigth?"
  puts "Don't you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!"
  end
end

if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end
