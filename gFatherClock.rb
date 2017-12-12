def grandFather &block
  hour = Time.now.hour

  if hour == 0
    hour = hour + 12
  elsif hour > 12
    hour = hour - 12
  end

  passed = []


  hour.times do
    passed.push hour
    hour = hour - 1
  end

  passed.first.to_i.times do
    block.call
  end

  puts passed.first.to_s + ' Hours has passed since midnight.'
end

grandFather do
  puts "DOGAAAAN!"
end
