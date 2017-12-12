def englishNumber number
  # => only numbers from 0 - 100
  if number < 0
    return 'Please enter the number zero or greater.'
  end
  if number == 0
    return 'zero'
  end

  numString = '' # This string would be returned.

  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',\
   'nine']

  tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy',\
   'eighty', 'ninety']

  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',\
   'seventeen', 'eighteen', 'nineteen']

  # => "Left" is how much of the number we still have left to write out
  # => "write" is the part being written out.
  # => write and left...

  left = number
  write = left/100  # how many hundreds left to write out.

  left = left - write*100 # => subtract off the hundreds.

  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      # => so as not to write 'two hundredfifty-one'....
      numString = numString + ' '
    end
  end
#     return 'one hundred'
#   end
#
  write = left/10 # => How many tens left to write out?
  left = left - write*10 # => subtract off the tens.
#
   if write > 0
     if ((write == 1) and (left > 0))
       numString = numString + teenagers[left-1]

       left = 0
     else
       numString = numString + tensPlace[write-1]
     end

     if left > 0
       # => so as not to write 'sistyfour'
       numString = numString + '-'
     end
   end


#     if write == 1 #can't write "twenty-two" instead of "twelve",
#       # => need to make a special exception
#       if    left == 0
#         numString = numString + 'ten'
#       elsif left == 1
#         numString = numString + 'eleven'
#       elsif left == 2
#         numString = numString + 'tweleve'
#       elsif left == 3
#         numString = numString + 'thirteen'
#       elsif left == 4
#         numString = numString + 'fourteen'
#       elsif left == 5
#         numString = numString + 'fifteen'
#       elsif left == 6
#         numString = numString + 'sixteen'
#       elsif left == 7
#         numString = numString + 'seventeen'
#       elsif left == 8
#         numString = numString + 'eighteen'
#       elsif left == 9
#         numString = numString + 'nineteen'
#       end
#       # => digits have all been taken care of
#       # => nothing left to write
#       left = 0
#     elsif write == 2
#       numString = numString + 'twenty'
#     elsif write == 3
#       numString = numString + 'thirty'
#     elsif write == 4
#       numString = numString + 'fourty'
#     elsif write == 5
#       numString = numString + 'fifty'
#     elsif write == 6
#       numString = numString + 'sixty'
#     elsif write == 7
#       numString = numString + 'seventy'
#     elsif write == 8
#       numString = numString + 'eighty'
#     elsif write == 9
#       numString = numString + 'ninety'
#     end
#
#     if left > 0
#       numString = numString + '-'
#     end
#   end
#
  write = left # => how many ones left to write out>
  left = 0 # => subtract of  those ones.
#
  if write > 0
    numString = numString + onesPlace[write-1]
  end
#   if write > 0
#     if    write == 1
#       numString = numString + 'one'
#     elsif write == 2
#       numString = numString + 'two'
#     elsif write == 3
#       numString = numString + 'three'
#     elsif write == 4
#       numString = numString + 'four'
#     elsif write == 5
#       numString = numString + 'five'
#     elsif write == 6
#       numString = numString + 'six'
#     elsif write == 7
#       numString = numString + 'seven'
#     elsif write == 8
#       numString = numString + 'eight'
#     elsif write == 9
#       numString = numString + 'nine'
#     end
#   end
#
#   if numString == ''
#     # numString can only be empty when "number" is 0
#     return 'zero'
#   end
#
  # => return numString
  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000000000)
