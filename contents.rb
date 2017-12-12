lineWidth = 40

#puts'Table of Contents'.center(lineWidth)
#puts ""
#puts('Chapter 1: Numbers'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2))
#puts('Chapter 2: Letters'.ljust(lineWidth/2) + 'page 72'.rjust(lineWidth/2))
#puts('Chapter 3: Variables'.ljust(lineWidth/2) + 'page 118'.rjust(lineWidth/2))

# Reformatting to use Arrays

contents = ['Chapter 1', 'Chapter 2', 'Chapter 3']
topics = ['Numbers', 'Letters', 'Variables']
pages = ['page 1', 'page 72', 'page 118']

cont = contents.length

puts 'Table of Contents'.center(lineWidth)
puts

# =>    I couldnt get this to work :(
#contents.each do |stuff|
#  puts "#{stuff}" + ": #{pages.each do |page| puts "#{page}"  end}"
#end

cont.times do |i|
  puts (contents[i] +": " + topics[i].ljust(lineWidth/2) + pages[i].rjust(lineWidth/2))
end
