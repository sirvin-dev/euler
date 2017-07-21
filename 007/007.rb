#!/bin/ruby
############################################################################
#
# Project Euler - Problem 007
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# 
# What is the 10001st prime number?
# 
# 
# Answer: 104743
# 
############################################################################

max = 10001
count = 1
num = 1

def isPrime(x)
    limit = x / 2
    i = 2
    while i <= limit
        if (x % i == 0)
                return false
        end
        i += 1
    end
    return true
end


while count < max
    num += 2
        if isPrime(num)
 #           puts "#{num} is prime"
            count += 1  
        end
    end

print "Prime number #{max} is #{num}\n"

