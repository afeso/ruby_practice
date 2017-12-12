class Array
  def evenEach(&wasABlock_nowAProc)
    # => stating with "true" cos arrays start with 0, which is even
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven) # => toggle from even to odd and vice versa.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].evenEach do |fruits|
  puts 'Yum! I just love ' +fruits+' pies, don\'t you?'
end

# => REM, getting all the even numbered elements
# => of the array, all of which happen to be odd numbers,

[1, 2, 3, 4, 5,].evenEach do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end
