=begin
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

Answer: 1366
=end

exponent = 1000
sum = 0
val = (2**exponent).to_s

val.each_char do |x|
    x = x.to_i
    sum += x
    end

puts "Sum is: #{sum}"