#/bin/ruby
############################################################################
#
# Project Euler - Problem 001
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# Answer:  233168
############################################################################

count = 1
max = 1000 
sum = 0

while (count < max) do
	if (count % 3 == 0)||(count % 5 == 0)
		sum = sum + count
	end
	count = count + 1
end

print "sum is: "
puts sum
