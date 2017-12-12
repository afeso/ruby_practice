# # => Extending Class
#
# class Integer
#   def to_eng
#     if self == 5
#       english = 'five'
#     else
#       english = 'fifty-eight'
#     end
#
#     english
#   end
# end
#
# puts 5.to_eng
# puts 58.to_eng
# puts 1.to_eng

puts "cheat die number"
cheat = gets.chomp.to_i

while (cheat >= 7 or cheat < 1) do
  # if cheat.to_s == '' then
  #   puts 'you entered a string'
  # end

  puts "Please enter a number between 1 till 6."
  cheat = gets.chomp.to_i

  if cheat.to_s == 'e'
    break
  end
end

class Die
  def initialize
    # => this is so as not to return nil when Die.new is called before roll
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end
  # => cheat method to return a rigged die num
  def cheatM cheatNum
    @cheatNums = cheatNum
    if @cheatNums <= 6
      2.times do
        puts @cheatNums
      end
    else
      side
    end


  end

  def side # => this returns the current dice number
    show = [Die.new.showing, Die.new.showing]
  end

end

# => making a couple of dice

# dice = [Die.new, Die.new]
#
# # => now to roll
#
# dice.each do |die|
#   puts die.roll
# end


Die.new.cheatM(cheat)
puts
puts Die.new.side
