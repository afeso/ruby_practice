class OrangeTree
  # => initialize method that runs if no other
  # => method is called with the OrangeTree class.
  def initialize #orange
    # @name = orange
    @tHeight = 1
    @fruits = 0
    @years = 1

    puts "Your orange Tree is #{@years} year(s) old."
    puts "It's current height is #{@tHeight} meter(s),"
    puts "And has #{@fruits} Fruits at the monment."
    puts
  end

  # => Returns the current Height of the tree,
  # => and calls the "oneYearPasses" method.
  def height
    puts "Height: #{@tHeight} meter(s)."
    # puts "Fruits: #{@fruits} Fruit(s)."
    oneYearPasses
  end

  # => ages the tree by a year, increases the heught,
  # => and if its a certain age, makes the tree bear fruit.
  def oneYearPasses
    puts "One Year Goes by."
    @years = @years + 1
    puts "Your Tree has gotten taller."
    @tHeight = @tHeight + 1
    if @years >= 10 then
      puts "Sadly, it grew too tall and your tree died. :("
      exit
    end

    # => resets the number of fruits back to zero.
    if @fruits >= 1 then
      @fruits = 0
      puts "Unplucked Oranges have fallen."
      puts
    end

    # => don't grow fruits untill 3 years Old
    if @years <= 3 then
      @fruits == 0
    else
      # grow a random number of fruits between 2 - 20
      @fruits = @fruits + rand(2...20)
    end

  end

  def countTheOrange
    puts "Orange: #{@fruits} Orange(s) are on the tree."
    puts
  end

  def pickTheOrange
    if @fruits >= 4 then
      @fruits = @fruits - 4
      puts "I plucked 4 Oranges."
      puts "Wow! what a tasty Oranges"
      puts "Fruits: #{@fruits} Left."
      puts
    else
      puts "There doesn't seem to be enought fruits to pluck this year."
      puts "Will try again next year."
      puts
    end
  end

end
orange = OrangeTree.new
# orange.height
# orange.height
10.times do
  orange.height
  orange.countTheOrange
  orange.pickTheOrange
end
