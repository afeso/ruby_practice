# def translate(word)
#   vowels = ['a','e','i','o','u']
#   result = []
#   new_word = word.split('')
#   new_array = []
#
#   vowels.each do |something|
#     while new_word[0] != something
#       new_array.push(new_word[0]) # the first value from the word array
#       new_word.delete_at(0) # => delete the first value
#     end
#
#   end
#
#   vowels.each do |item|
#     if word[0] == item
#       pig = word[0..(word.length - 1)] + 'ay'
#       puts pig
#     elsif word[0] != item
#       pig = word[1..(word.length - 1)] + word[0] + 'ay'
#       puts pig
#     end
#     return pig
#   end
#   # puts pig
# end
#
#
# translate("apple")
# puts
# translate("bannana")
# puts
#
# puts "2 consonants"
# translate("cherry")

# => Start Un commenting from here
word = 'the quick brown fox'
auto_hash = ['a','b','c','d','e']
auto_empty_hash = ['a1','b1','c1','d1','e1']

empty_hash = {} # => for auto generation of array to hold the reverse value of each word
blank_hash = {} # => for auto genaration of empty arrays
temp_count = 0
temp_count2 = 0

multi_word_array2 = word.split


vowels = ['a','e','i','o','u']
result = []
new_word = 'cherry'.split('')
multi_word = 'eat pie'
multi_word_array = multi_word.split()
new_array = []

loop_array = new_word.reverse

a = 0
# b = 0
vowels.each do |t_vowel|
  if multi_word_array.length > 1 then
    m0 = multi_word_array[0].split('').reverse
    m0_blank = []
    m1 = multi_word_array[1].split('').reverse
    m1_blank = []

    if vowels.include?(m0.last)
      $multi0 = "#{m0.reverse.join}ay"
    elsif m0.last != t_vowel
      m0_blank.push(m0.last)
      m0.pop
      $multi0 = "#{m0.reverse.join}#{m0_blank.join}ay"
      # break if vowels.include?(m0.last)
    end

    if vowels.include?(m1.last)
      $multi1 = "#{m1.reverse.join}ay"
    elsif m1.last != t_vowel
      m1_blank.push(m1.last)
      m1.pop
      $multi1 = "#{m1.reverse.join}#{m1_blank.join}ay"
      # break if vowels.include?(m1.last)
    end
  end
end

puts $multi0 + ' ' + $multi1


vowels.each do |temp_vowel|
  if vowels.include?(loop_array.last)
    puts "#{loop_array.reverse.join}ay"
    break
  elsif loop_array.last != temp_vowel
    new_array.push(loop_array.last)
    loop_array.pop
    puts "#{loop_array.reverse.join}#{new_array.join}ay"
    break if vowels.include?(loop_array.last)


  end

end

# => end here ................

auto_hash.each do |this|
  blank_hash[this] = multi_word_array2[temp_count].split('').reverse
  temp_count += 1
  break if temp_count == (auto_hash.length - 1)
end

puts
puts blank_hash
puts blank_hash['a'].reverse.join + blank_hash['b'].join.reverse
puts temp_count

puts

auto_empty_hash.each do |another_thing|
  empty_hash[another_thing] = []
  temp_count2 += 1
  break if temp_count2 == (auto_empty_hash.length - 1)
end

# puts empty_hash

if word.length >= 2
  puts "#{blank_hash['a']}  #{empty_hash['a1']}"
  vowels.each do |another_temp_vowel|
    if vowels.include?(blank_hash['a'].last)
      $empty0 = "#{blank_hash['a'].reverse.join}ay"
    elsif blank_hash['a'].last != another_temp_vowel
      empty_hash['a1'].push(blank_hash['a'].last)
      blank_hash['a'].pop
      $empty0 = "#{blank_hash['a'].reverse.join}#{empty_hash['a1'].join}ay"
      # break if vowels.include?(blank_hash['a'].last)
    end

    if vowels.include?(blank_hash['b'].last)
      $empty1 = "#{blank_hash['b'].reverse.join}ay"
    elsif blank_hash['b'].last != another_temp_vowel
      empty_hash['b1'].push(blank_hash['b'].last)
      blank_hash['b'].pop
      $empty1 = "#{blank_hash['b'].reverse.join}#{empty_hash['b1'].join}ay"
      # break if vowels.include?(blank_hash['b'].last)
    end

    if vowels.include?(blank_hash['c'].last)
      $empty2 = "#{blank_hash['c'].reverse.join}ay"
    elsif blank_hash['c'].last != another_temp_vowel
      empty_hash['c1'].push(blank_hash['c'].last)
      blank_hash['c'].pop
      $empty2 = "#{blank_hash['c'].reverse.join}#{empty_hash['c1'].join}ay"
      break if vowels.include?(blank_hash['c'].last)
    end

    if vowels.include?(blank_hash['d'].last)
      $empty3 = "#{blank_hash['d'].reverse.join}ay"
    elsif blank_hash['d'].last != another_temp_vowel
      empty_hash['d1'].push(blank_hash['d'].last)
      blank_hash['d'].pop
      $empty3 = "#{blank_hash['d'].reverse.join}#{empty_hash['d1'].join}ay"
      # break if vowels.include?(blank_hash['d'].last)
    end

  end
end

puts "#{$empty0} #{$empty1} #{$empty2} #{$empty3}"
puts empty_hash['a1'].join
# if multi_word_array2.length > 1 then
#   multi_word_array2.length.times do
#     auto_hash.each do |this|
#       blank_hash[this] = multi_word_array2[temp_count2].split('').reverse
#       temp_count2 += 1
#       break if temp_count2 == 2#(multi_word_array2.length - 2)
#     end
#     break if temp_count2 == 2
#   end
# end
  # m0 = multi_word_array[0].split('').reverse
  # m0_blank = []
  # m1 = multi_word_array[1].split('').reverse
  # m1_blank = []
