=begin

Surprisingly there are only three numbers that can be written as 
the sum of fourth powers of their digits:

1634 = 1^4 + 6^4 + 3^4 + 4^4
8208 = 8^4 + 2^4 + 0^4 + 8^4
9474 = 9^4 + 4^4 + 7^4 + 4^4
As 1 = 1^4 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum 
of fifth powers of their digits.

=end

$count = 2
$sum = 0
$exp = 5
max = 10000000
=begin
so, originally i just ran this with no limit.  found a note
about how to determine a limit: 

max for 1 digit is 9^5 = 59049.  max for any number of digits 
is 59049 * number of digits.  by the 9 digit number you'd see
the max is only 531441 which is not even close to 9 digits, so 
nothing bigger will be either
=end

while $count < max
    text = $count.to_s
    y = 0
    text.each_char do |x|
        y += x.to_i**$exp
        end

    if $count == y
        #puts "#{$count} is included"
        $sum += $count
        end

    $count += 1
    end

puts "Answer is: #{$sum}"