#!/usr/bin/ruby
############################################################################
#
# Project Euler - Problem 004
#
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 * 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# 
# Answer: 906609
############################################################################

a = 1
b = 1
max = 1000
large = 0

while a < max
    b = 1
    while b < max
        c = a * b
        if c.to_s == c.to_s.reverse!
            if c > large
                large = c
            end
        end
        b += 1
    end
    a += 1
end

print "Largest palindrome is: #{large}\n"