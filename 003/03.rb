#!/usr/bin/ruby
############################################################################
#
# Project Euler - Problem 003
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
############################################################################

include Math

max = 600851475143
count = 1
large = 0
square = sqrt(max)

def isPrime(num)
    limit = num / 2
    for i in (2..limit)
        if num % i == 0
            return 0
        end
    end
    return 1
end

while ( count < square)
    if max % count == 0
        if isPrime(count)==1
            large = count
        end
    end
    count += 1
end

print "Largest is: #{large} \n"