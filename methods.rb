def sayMoo numberOfMoos
 puts 'mooooooooooooooooooo.....' * numberOfMoos
 'Yellow Submarine'
end
#
# 2.times do
#   sayMoo 3
# end
# puts 'coin-coin'
# sayMoo 3

# => LOCAL VARIABLE

# def doubleThis num
#   numTimes2 = num * 2
#   puts num.to_s + ' doubled is ' + numTimes2.to_s
# end
#
# doubleThis 44
# puts numTimes2.to_s
#
# def littlePest var
#   var = nil
#   puts 'HAHA! I ruined your variable!'
# end
#
# var = 'You can\'t even touch my variable!'
# littlePest var
# puts var

# => RETURN VALUES

# returnVal = puts 'This puts returned:'
# puts returnVal

puts sayMoo 3
