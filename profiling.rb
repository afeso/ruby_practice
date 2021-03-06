def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+': ' +duration.to_s+ ' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end
  # => show the Number of digits in this huge number.
  puts number.to_s.length.to_s + ' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
