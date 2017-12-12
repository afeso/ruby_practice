# toast = Proc.new do
#   puts 'Kanpaii!'
# end
#
# 3.times do
#   toast.call
# end
# puts
#
# doYouLike = Proc.new do |aGoodThing|
#   puts 'I *really* like ' + aGoodThing+'!'
# end
#
# doYouLike.call 'choco'
# doYouLike.call 'rails'
# =>

# def doSelfImportantly someProc
#   puts 'Everybody just HOLD ON! I have something to do...'
#   someProc.call
#   puts 'Ok everyone, I\'m done. Go on with what you were doing.'
# end
#
# sayHello = Proc.new do
#   puts 'konnichiwa'
# end
#
# sayGoodbye = Proc.new do
#   puts 'sayounara'
# end
#
# doSelfImportantly sayHello
# doSelfImportantly sayGoodbye
# =>

# def maybeDo someProc
#   if rand(2) == 0
#     someProc.call
#   end
# end
#
# def twiceDo someProc
#   someProc.call
#   someProc.call
# end
#
# wink = Proc.new do
#   puts '<wink>'
# end
#
# glance = Proc.new do
#   puts '<glance>'
# end
#
# maybeDo wink
# maybeDo glance
# puts
# twiceDo wink
# twiceDo glance
# =>

# def doUntillFalse firstInput, someProc
#   input = firstInput
#   output = firstInput
#
#   while output
#     input = output
#     output = someProc.call input
#   end
#
#   input
# end
#
# buildArrayOfSquares = Proc.new do |array|
#   lastNumber = array.last
#   if lastNumber <= 0
#     false
#   else
#     array.pop # => remove the last number from the array
#     array.push lastNumber*lastNumber # => and replace it with its square
#     array.push lastNumber - 1 # => followed by the next smaller number
#   end
# end
#
# alwaysFalse = Proc.new do |justIgnoreMe|
#   false
# end
#
# puts doUntillFalse([5], buildArrayOfSquares).inspect
# puts doUntillFalse("I'm running this at around #{Time.new.hour} AM/PM; someone knock me out!"\
# , alwaysFalse)

# => Proc 3

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
