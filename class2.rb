class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10 # => he's full
    @stuffInIntestine = 0 # => He doesn't need to go.

    puts @name + ' is born'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'you toss ' + @name + ' up into the air'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes up when you stop.'
    end

    def potty
      @stuffInIntestine = 0
      puts "You took #{@name} to his dragon litter box."
      puts "He's feels relaxed."
    end
  end

  private

  # => Private means the methods defined here are
  # => methods internal to the object. (You can feed the dragon,
  # => but you cant ask if he's hungry)

  def hungry?
    # => the question mark at the end of this method,
    # => is used for methods that return bool values.
    # => it's not really necessarry but its more of a convention.
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # => move food from belly to intestine.
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving! In desperation, he ate YOU!'
      exit # => This quits the program
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

actions = ["feed", "toss", "walk", "rock", "potty", "sleep"]
puts "What would you like to call your Dragon?"
dName = gets.chomp
puts
pet = Dragon.new dName
# pet.feed
# pet.toss
# pet.walk
# pet.putToBed
# pet.rock
# pet.putToBed
# pet.putToBed
# pet.putToBed
# pet.putToBed
puts "Here are a few action that can be given to your pet #{dName}."
puts
puts actions
puts
puts "you just have to type the action during the prompt and press enter."
puts "Or just type in exit to close the program."
puts
puts "what would you like to do ?"
action = gets.chomp.downcase
#
while action != "exit"
  if action == "toss" then
    pet.toss
    action = gets.chomp.downcase
  elsif action == "feed" then
    pet.feed
    action = gets.chomp.downcase
  elsif action == "walk" then
    pet.walk
    action = gets.chomp.downcase
  elsif action == "rock"
    pet.rock
    action = gets.chomp.downcase
  elsif action == "sleep"
    pet.putToBed
    action = gets.chomp.downcase
  elsif action == "potty"
    pet.potty
    action = gets.chomp.downcase
  elsif action == ""
    puts "Hmmm... you don't seem to have typed anything."
    puts "#{dName} tilts his head in anticipation."
    action = gets.chomp.downcase
  else
    puts "You entered and Invalid commmand, try again:"
    action = gets.chomp.downcase
  end


end
