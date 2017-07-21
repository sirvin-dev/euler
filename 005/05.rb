#!/usr/bin/ruby
############################################################################
#
# Project Euler - Problem 005
#
# 2520 is the smallest number that can be divided by each of the numbers 
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of 
# the numbers from 1 to 20?
#
# Answer: 232792560
############################################################################

max = 20
count = max

def isValid num, max # have to pass global variable inside the function
    max.downto(2) do |i|
        if num % i != 0
            return 0
        end
    end
    return 1
end

while (true)
    if isValid(count, max) == 1
        print "Answer is: #{count}\n"
        break
    else
        count = count + max
    end
end

    
