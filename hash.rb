colorArray = [] # => same as Array.new
colorHash = {} # => same Hash.new

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'

colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end

colorHash.each do |codeType, color|
  puts codeType + ': ' + color
end


puts
puts

weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

puts weirdHash
weirdHash.each do |container, content|
  puts container
  puts content
end
