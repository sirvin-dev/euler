#!/usr/bin/ruby
############################################################################
#
# Project Euler - Problem 006
#
# The sum of the squares of the first ten natural numbers is,
# 
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025-385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.
#
#
# Answer: 25164150
############################################################################

max = 100
count = 1
sumOfSquares = 0
sum = 0
answer = 0

while count <= max
    sum += count
    sumOfSquares += (count * count)
    count += 1
end
answer = (sum * sum) - sumOfSquares
print "answer is: #{answer}\n"