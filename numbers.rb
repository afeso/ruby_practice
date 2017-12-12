def englishNumber number

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

  thousands = ['one thousand', 'two thousand', 'three thousand', 'four thousand',\
   'five thousand', 'six thousand', 'seven thousand', 'eight thousand', 'nine thousand']

  # => "Left" is how much of the number we still have left to write out
  # => "write" is the part being written out.
  # => write and left...


  left = number
  write = left/1000  # how many thousands left to write out.

  left = left - write*1000 # => subtract off the thousands.

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      # => so as not to write 'two hundredfifty-one'....
      numString = numString + ' '
    end
  end

  # => and now for hundreds

  #left = number
  write = left/100  # how many hundreds left to write out.

  left = left - write*100 # => subtract off the hundreds.

  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      # => so as not to write 'two hundredfifty-one'....
      numString = numString + ' and' + ' '
    end
  end


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

  write = left # => how many ones left to write out>
  left = 0 # => subtract of  those ones.
 #
  if write > 0
   numString = numString + onesPlace[write-1]
  end

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
