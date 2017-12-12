array = [1,2,3,4,5,6,7]
array2 = []
calc = 0

array.length.times do |x|
  puts array[x]

  # array2.push array[x]


  # => i am not fully sure why this works, but it just does.
  # calc = calc + array[x]

  # array2.pop
end

# puts array2.inspect

def sum arrays
  arrays.length.times do |x|
    calc =  calc + arrays[x]
  end

  puts "The value is #{calc}"
end


puts #calc

sum array
