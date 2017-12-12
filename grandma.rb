puts "SAY SOMETHING TO GRANDMA DEAR."
speak = gets.chomp
hear = speak.upcase

while (speak != speak.upcase)
  puts "HUH!, SPEAK UP, SONNY!"
  speak = gets.chomp
end
if (speak == speak.upcase)
  puts "NO, NOT SINCE #{1930 + rand(1950 - 1929)}!"
  speak = gets.chomp
end
  while (speak != 'BYE')
    puts ""
    puts "SAY SOMETHING TO GRANDMA SONNY"
    speak = gets.chomp
    if (speak == 'BYE')
      break
  elsif (speak == speak.upcase)
      puts "NO, NOT SINCE #{1930 + rand(1950 - 1929)}!"
      #speak = gets.chomp
    end
  end
#end
